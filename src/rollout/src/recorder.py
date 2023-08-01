#!/usr/bin/env python

'''
Author:  Osher Azulay
'''

# from tensorflow.keras.layers import Dropout
# from tensorflow.keras.regularizers import l1
# from tensorflow.keras.optimizers import Adam
# from tensorflow.keras.layers import Conv1D, MaxPooling1D, Flatten, Dense
# from tensorflow.keras.models import Sequential
from keras.models import load_model
from scipy.signal import butter, filtfilt
from math import isnan
from matplotlib.collections import PatchCollection
from matplotlib.patches import Arc
import numpy.random as rnd
import matplotlib.patches as mpatches
from matplotlib.patches import Circle
from matplotlib.patches import Rectangle
import subprocess
import rospy
from std_msgs.msg import String, Float32MultiArray, Bool, Float32
from std_srvs.srv import Empty, EmptyResponse, SetBool
from rollout.srv import rolloutReq, rolloutReqFile, plotReq, observation, IsDropped, TargetAngles, gets
from hand_control.srv import RegraspObject, close
import numpy as np
import matplotlib.pyplot as plt
import pickle
import geometry_msgs.msg
from sensor_msgs.msg import CompressedImage, Image
import os
from cv_bridge import CvBridge, CvBridgeError
import cv2
import time
import matplotlib.font_manager as fm
import matplotlib as mpl
font_names = [f.name for f in fm.fontManager.ttflist]

# Rebuild the matplotlib font cache
fm._rebuild()
# Edit the font, font size, and axes width
mpl.rcParams['font.family'] = 'DejaVu Serif'
plt.rcParams['font.size'] = 8
plt.rcParams['axes.linewidth'] = 1
pred_color = 'black'
gt_color = 'dodgerblue'
gt_color_px = 'fuchsia'
np.set_printoptions(2)


display_images = True
display_prediction = False
display_obs = False
record = False
display_gt = False


class RotatingRectangle():
    def __init__(self, xy, width, height, rel_point_of_rot, angle, color, alpha):
        self.rect = mpl.patches.Rectangle(xy=(
            xy), width=width, height=height, color=color, alpha=alpha, angle=angle, fill=False)
        # Rectangle.__init__(xy, width, height, **kwargs)
        self.rel_point_of_rot = rel_point_of_rot
        self.xy_center = self.rect.get_xy()
        self.angle = angle
        self.set_angle(self.angle)

    def _apply_rotation(self):
        angle_rad = self.angle * np.pi / 180
        m_trans = np.array([[np.cos(angle_rad), -np.sin(angle_rad)],
                            [np.sin(angle_rad), np.cos(angle_rad)]])

        shift = np.matmul(-m_trans, self.rel_point_of_rot)
        self.rect.set_xy(self.xy_center + shift)

    def set_angle(self, angle):
        self.angle = angle
        self._apply_rotation()

    def set_rel_point_of_rot(self, rel_point_of_rot):
        self.rel_point_of_rot = rel_point_of_rot
        self._apply_rotation()

    def set_xy_center(self, xy):
        self.xy_center = xy
        self._apply_rotation()


def arc_patch(xy, width, height, theta1=0., theta2=180., resolution=50, **kwargs):

    # generate the points
    theta = np.linspace(np.radians(theta1), np.radians(theta2), resolution)
    points = np.vstack((width*np.cos(theta) + xy[0],
                        height*np.sin(theta) + xy[1]))
    # build the polygon and add it to the axes
    poly = mpatches.Polygon(points.T, closed=False, **kwargs)

    return poly


def crop(img):
    return img  # img[200:-5,50:710, :]


def setgrid(ax):
    ax.tick_params(axis='y', which='left', labelleft=False, labelright=True)
    ax.grid(b=True, which='major', color='#666666', linestyle='-', alpha=0.5)
    ax.minorticks_on()
    ax.grid(b=True, which='minor', color='#999999', linestyle='-', alpha=0.2)


class rolloutRecorder():

    # simple record node
    # require trigger - /rollout/record_trigger
    # launch a service to get state

    running = False
    suc = True
    fail = False
    display = True
    ref_flag = False
    clear = False
    drop = True
    grasped = False
    nan_in_state = False
    subsequence_length = 75
    first_run = True
    first_state = 0
    # model = load_model('subsequence75.h5')

    action = np.array([0., 0.])  # left, right
    obj_pos = np.array([0., 0., 0.])  # x, y, theta
    obj_pos_pixels = np.array([0, 0])
    obj_pos_nn = np.array([0., 0., 0.])  # x, y, theta
    start_pos = np.array([0., 0., 0.])
    goal = np.array([0., 0., 0.])
    object_true_traj = np.array([0., 0., 0.])
    object_pred_traj = np.array([0., 0., 0.])
    object_true_traj_px = np.array([0., 0.])
    obs = np.array([0., 0., 0., 0., 0., 0.])
    S, A, T = [], [], []
    images, Timages = [], []
    I = np.zeros((480, 640, 3), dtype=np.uint8)
    prediction = {0:1, 1:0, 2:0, 3:0, 4:0, 5:0, 6:0, 7:0}

    xy_gt = np.array([0., 0.])
    xy_pred = np.array([0., 0.])

    T0 = 0.
    counter = 0
    drop_counter = 0
    start_rot = 0

    def __init__(self):
        rospy.init_node('rollout_recorder', anonymous=True)

        rospy.Subscriber('/hand_control/drop', Bool, self.callbackObjectDrop)
        rospy.Subscriber('/rollout/action', Float32MultiArray,
                         self.callbackAction)
        rospy.Subscriber('/rollout/fail', Bool, self.callbacFail)

        rospy.Service('/recorder/record_trigger',
                      SetBool, self.callbackTrigger)
        rospy.Service('/recorder/save_rollout', SetBool, self.callbackSave)
        rospy.Service('/recorder/get_states', gets, self.callbackStates)

        obs_srv = rospy.ServiceProxy('/observation', observation)

        self.params = np.array([rospy.get_param('/openhandNode/motor_offset')[0],
                                rospy.get_param(
                                    '/openhandNode/motor_offset')[1],
                                rospy.get_param('/hand_control/finger_close_load')])

        rospy.Subscriber('/control/goal', Float32MultiArray, self.callbackGoal)
        rospy.Subscriber('/hand_control/obj_pos_pixels',
                         Float32MultiArray, self.callbackPixels)
        rospy.Subscriber('/rollout/ObjectIsReset',
                         String, self.graspStatusCallback)

        rospy.Service('/plot/clear', Empty, self.callbackClear)

        if display_images:
            self.bridge = CvBridge()
            rospy.Subscriber('/camera/image_raw', Image,
                             self.callbackImage, queue_size=1)

        self.config_display(False)

        print('[recorder] Ready ...')

        if not display_images:
            self.rate = rospy.Rate(12)  # 10hz
        else:
            self.rate = rospy.Rate(12)  # 2hz

    # def preprocess_single_matrix(matrix):
    #     def apply_low_pass_filter(matrix1):
    #         # Apply a low-pass filter to the matrix
    #         b, a = butter(5, 0.1, btype='lowpass', analog=False)
    #         filtered_matrix = filtfilt(b, a, matrix1, axis=0)
    #         return filtered_matrix
    #     subsequence_length = 75
    #     subsequences = []

    #     length = matrix.shape[0]
    #     num_subsequences = length - subsequence_length + 1

    #     for i in range(num_subsequences):
    #         subseq = matrix[i : i + subsequence_length, :]
    #         if not np.isnan(subseq).any() and subseq.shape[0] == subsequence_length:
    #             filtered_subseq = apply_low_pass_filter(subseq)
    #             subsequences.append(filtered_subseq)

    #     if subsequences:
    #         with open('scaler.pkl', 'rb') as f:
    #             scaler = pickle.load(f)
    #         normalized_matrices = scaler.fit_transform(np.array(subsequences).reshape(-1, 6))
    #         result = normalized_matrices.reshape(-1, subsequence_length, 6)
    #     else:
    #         result = np.empty((0, subsequence_length, 6))

    #     return result

    # def predict_class(matrix):
    #     # Preprocess the input matrix
    #     class_names = ['Ovular', 'Hexagon', 'Square', 'David', 'Duck', 'Circle', 'Blob', 'Halfcircle']
    #     preprocessed_matrix = preprocess_single_matrix(matrix)

    #     # Reshape to match the input shape of the model
    #     reshaped_matrix = preprocessed_matrix.reshape(1, subsequence_length, matrix.shape[-1])

    #     # Predict the class and get the confidence using the model
    #     predictions = model.predict(reshaped_matrix)
    #     class_index = np.argmax(predictions)
    #     confidence = np.max(predictions)

    #     # Map class index to class name
    #     predicted_class = class_names[class_index]

    #     return predicted_class, confidence, class_index


        while not rospy.is_shutdown():

            if True:  # if self.running and not self.drop and self.grasped:

                self.counter += 1
                self.state = np.array(obs_srv().state)
                if self.first_run and self.first_state is not 0:
                    print(self.first_state)
                    for i in self.first_state:
                        if isnan(i):
                            i_in_state = True
                    if not i_in_state:
                        self.first_state = self.state
                        self.first_run = False
                self.state = np.subtract(self.state, self.first_state)

                if not self.start_rot:
                    self.start_rot = 1 * self.state[2]
                    # 4 for sqr, without for cyl
                    self.start_rot_obj = 0 * self.state[2] % (np.pi / 4.)

                self.state[2] = self.state[2] - \
                    self.start_rot + self.start_rot_obj

                if self.state[2] > np.pi:
                    self.state[2] -= 2. * np.pi
                if self.state[2] < -np.pi:
                    self.state[2] += 2. * np.pi

                self.state[:2] *= 1000  # convert to mm
                self.state[2] *= 180.0 / np.pi  # convert to degrees

                self.obj_pos = self.state[:3]

                if display_gt:
                    self.object_true_traj = np.vstack(
                        (self.object_true_traj, self.obj_pos))
                    # self.object_true_traj[-1, 2] = -1*self.object_true_traj[-1, 2]
                    self.object_true_traj_px = np.vstack(
                        (self.object_true_traj_px, self.obj_pos_pixels))

                if self.counter <= 5:
                    self.start_pos = self.obj_pos
                for i in self.state:
                    if isnan(i):
                        self.nan_in_state = True
                        break
                if not self.nan_in_state:
                    self.S.append(self.state)
                    self.A.append(self.action)
                    self.T.append(rospy.get_time() - self.T0)
                else:
                    rospy.logwarn(
                        "NaN value detected in state array, data not appended")
                self.nan_in_state = False

                if display_images and self.counter % 2:
                    self.images.append(self.I)
                    self.Timages.append(rospy.get_time() - self.T0)

                if self.fail:
                    print('[recorder] Episode ended with %d points.' %
                          len(self.S))
                    if record:
                        self.p.communicate()
                    self.running = False

                # if self.counter % 2 == 0:
                self.update_plot(False)
            else:
                self.first_run = True
                self.first_state = 0

            self.rate.sleep()

    def config_display(self, blit):
        plt.close('all')
        plt.ion()

        mpl.rcParams['font.family'] = 'DejaVu Serif'
        plt.rcParams['font.size'] = 8
        plt.rcParams['axes.linewidth'] = 1

        self.fig = plt.figure(figsize=(16, 8))
        canvas_width, canvas_height = self.fig.canvas.get_width_height()
        self.ax1 = self.fig.add_subplot(1, 2, 1)
        self.ax0 = self.fig.add_subplot(1, 2, 2)
        self.ax1.set_yticklabels([])
        self.ax1.set_xticklabels([])

        for axis in ['top', 'bottom', 'left', 'right']:
            self.ax1.spines[axis].set_linewidth(5)
        # obs

        if display_images:
            self.img = self.ax1.imshow(self.I)

        self.goal_plot_px, = self.ax1.plot(
            [], color='green', marker='x', alpha=0.8, markersize=6,)

        if self.ref_flag:
            self.ref_path_px, = self.ax1.plot(
                [], '--g', linewidth=1, alpha=0.4, label='Reference Trajectory')

        self.fig.canvas.draw()

        if blit:
            # cache the background
            self.axbackground = self.fig.canvas.copy_from_bbox(self.ax1.bbox)
            if display_obs:
                self.ax3background = self.fig.canvas.copy_from_bbox(
                    self.ax3.bbox)
                self.ax4background = self.fig.canvas.copy_from_bbox(
                    self.ax4.bbox)
                self.ax5background = self.fig.canvas.copy_from_bbox(
                    self.ax5.bbox)
                self.ax6background = self.fig.canvas.copy_from_bbox(
                    self.ax6.bbox)
                self.ax7background = self.fig.canvas.copy_from_bbox(
                    self.ax7.bbox)
                self.ax8background = self.fig.canvas.copy_from_bbox(
                    self.ax8.bbox)

        plt.show(block=False)

        if record:
            # Open an ffmpeg process
            outf = '/home/julius/home/logs'
            cmdstring = ('ffmpeg',
                         '-y', '-r', '10',  # overwrite, 30fps
                         # size of image string
                         '-s', '%dx%d' % (canvas_width, canvas_height),
                         '-pix_fmt', 'argb',  # format
                         '-f', 'rawvideo', '-i', '-',  # tell ffmpeg to expect raw video from the pipe
                         '-vcodec', 'png', outf)  # output encoding
            self.p = subprocess.Popen(cmdstring, stdin=subprocess.PIPE)

    def update_plot(self, blit):
        r = 1000 * 0.02 / 2

        if display_images:
            self.img.set_data(self.I)

        if display_prediction:
            # model = load_model('subsequence75.h5')
            # with open('scaler.pkl', 'rb') as f:
            #     scaler = pickle.load(f)
            self.ax0.clear()
            # ************************************************************************************************
            # Create 8 random integers for y values
            y_values = np.random.randint(0, 100, size=8)

            # Create 8 buckets
            x_values = list(range(1, 9))

            # Create labels for the buckets
            labels = ['Ovular', 'Hexagon', 'Square', 'David', 'Duck', 'Circle', 'Blob', 'Halfcircle']

            self.ax0.bar(x_values, y_values, tick_label=labels, color=['#f51f07', '#f52b07', '#f54307', '#f55607', '#f56207', '#f56e07', '#f57e07', '#f59e07'])

            # Adding some extra settings
            self.ax0.set_xlabel('Buckets')
            self.ax0.set_ylabel('Sum of Prediction Confidences')
            self.ax0.set_title('Live Prediction')
            self.fig.canvas.draw()
            plt.pause(.04)

            # self.ax0.tight_layout()
            # self.ax0.show()
            # matrix = preprocessed_input(self.S)
            # preprocessed_input = np.expand_dims(matrix, axis=0)
            # predictions = self.model.predict(preprocessed_input)
            # predicted_class = np.argmax(predictions)
            # certainty = np.max(predictions)
            # print("Predicted Class:", predicted_class)
            # print("Certainty:", certainty)
            # # Generate some random data for the bar chart
            # categories = predictions.keys()
            # data = predictions.values()

            # # Create the bar chart within ax0
            # x_positions = np.arange(len(categories))
            # self.ax0.bar(x_positions, data, align='center', color='skyblue')

            # # Set the labels for the x-axis and y-axis
            # self.ax0.set_xticks(x_positions)
            # self.ax0.set_xticklabels(
            #     predictions.keys(), rotation=45, ha='right')
            # self.ax0.set_ylabel('Values')

            # # Set the title for ax0
            # self.ax0.set_title('Classification Distribution')

        if self.goal.any():
            self.goal_plot.set_data(self.goal[0] * 1000, self.goal[1] * 1000)
            if self.ref_flag:
                self.ref_path.set_data(self.Sref[:, 0], self.Sref[:, 1])


        if blit:
            self.fig.canvas.restore_region(self.axbackground)

            if display_obs:
                self.fig.canvas.restore_region(self.ax3background)
                self.fig.canvas.restore_region(self.ax4background)
                self.fig.canvas.restore_region(self.ax5background)
                self.fig.canvas.restore_region(self.ax6background)
                self.fig.canvas.restore_region(self.ax7background)
                self.fig.canvas.restore_region(self.ax8background)

            # redraw just the points
            if display_images:
                self.ax1.draw_artist(self.img)

            # fill in the axes rectangle
            self.fig.canvas.blit(self.ax1.bbox)


        else:
            self.fig.canvas.draw()


        self.fig.canvas.flush_events()

        if record:
            string = self.fig.canvas.tostring_argb()
            self.p.stdin.write(string)

    def callbackObjectDrop(self, msg):

        if msg.data:
            self.drop_counter += 1
        else:
            self.drop_counter = 0

        if msg.data and self.drop_counter >= 3:
            self.drop = True
        else:
            self.drop = False

    def callbackClear(self, msg):
        self.clear = True
        return EmptyResponse()

    def callbackGoal(self, msg):
        self.goal = np.array(msg.data)

    def callbackPixels(self, msg):
        self.obj_pos_pixels = np.array(msg.data)

    def graspStatusCallback(self, msg):
        if msg.data == "finished":
            self.grasped = True
        else:
            self.grasped = False

    def callbackPredictedPos(self, msg):
        if self.counter < 5:
            self.obj_pos_nn = np.array(msg.data)
        else:
            e = 0.9
            self.obj_pos_nn = np.array(msg.data) * \
                (1 - e) + e * self.obj_pos_nn

    def callbackPlot(self, req):
        self.Sref = np.array(req.desired_path).reshape(-1, 2)
        self.Sref *= 1000
        self.ref_flag = True if self.Sref.shape[0] > 5 else False

        return {'real_path': [], 'success': True}

    def callbackAction(self, msg):
        self.action = np.array(msg.data)

    def callbacFail(self, msg):
        self.fail = msg.data

    def callbackImage(self, msg):
        try:
            frame = self.bridge.imgmsg_to_cv2(msg, "bgr8")
        except CvBridgeError as e:
            print(e)
        frame = np.array(frame, dtype=np.uint8)
        self.I = crop(cv2.cvtColor(frame, cv2.COLOR_BGR2RGB))

    def callbackTrigger(self, msg):
        self.running = msg.data
        if self.running:
            self.counter = 0
            self.S = []
            self.A = []
            self.T = []
            self.T0 = rospy.get_time()
            self.images = []
            self.Timages = []
            self.object_true_traj = np.array([[0., 0., 0.]])
            self.object_true_traj_px = np.array([[0., 0.]])
            self.object_pred_traj = np.array([0., 0., 0.])
            self.obs = np.array([0., 0., 0., 0., 0., 0.])
            self.start_rot = 0.0
            print('[recorder] Recording started.')
            self.fail = False
        else:
            if False:
                self.callbackSave(True)
            print('[recorder] Recording stopped with %d points.' % len(self.S))
            print(self.S)
            print(self.S.shape)

        return {'success': True, 'message': ''}

    def callbackSave(self, msg):
        name = str(self.goal)
        print('SAVE REQUEST')
        path = os.path.join(os.path.dirname(
            os.path.realpath(__file__)), '../sample_trajectories')
        if not (os.path.exists(path)):
            os.makedirs(path)
        file_name = name + '_' + time.strftime("%d-%m-%Y_%H-%M-%S")
        print('data length\t' + str(len(self.S)) +
              '\n num images:\t' + str(len(self.images)))

        trajectory = {"observation": self.S,
                      "time": self.T,
                      "action": self.A,
                      "true_traj": self.object_true_traj,
                      "pred_traj": self.object_pred_traj,
                      "true_traj_px": self.object_true_traj_px,
                      # "image": self.images,
                      # "Timage": self.Timages,
                      }

        with open(path + '/' + file_name + '.pkl', 'wb') as f:
            pickle.dump(trajectory, f)

        return {'success': True, 'message': ''}

    def callbackStates(self, msg):
        return {'states': np.array(self.S).reshape((-1,)),
                'actions': np.array(self.A).reshape((-1,)),
                'time': np.array(self.T).reshape((-1,))}


if __name__ == '__main__':
    try:
        import matplotlib.pyplot as plt
        rolloutRecorder()
    except rospy.ROSInterruptException:
        pass
