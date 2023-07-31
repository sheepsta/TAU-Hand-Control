#!/usr/bin/env python

# Written by Avishai Sintov
# Modified by Osher Azulay

import rospy
import numpy as np
import matplotlib.pyplot as plt
import pickle
from rollout.srv import rolloutReqMod
import time
import glob
import os
import rospy

rollout_srv = rospy.ServiceProxy('/rollout/rollout', rolloutReqMod)

rospy.init_node('run_rollout_set', anonymous=True)
rate = rospy.Rate(15)  # 15hz
state_dim = 7
action_dim = 2

path = '/home/julius/TAU-Hand-Control/src/rollout/src/plans/'
gum = 0
circle = 0
rubiks_cube = 0
duck = 0
knife = 0
blob = 0
halfcircle = 0
broom = 0
david = 0
cylinder = 1
square = 0
hexagon = 0
crescent = 0
rollout = 1
save_graph = True
save_trans = True



def save_display(d,tp, tofile):


    end = -10
    d = d[:end, :]
    x = 0
    y = 1

    fig = plt.figure(figsize=(10, 10))

    fig.add_subplot(3, 2, 1)
    plt.plot(d[0, x], d[0, y], 'r*', label='start')

    # plt.plot(d[:,x],d[:,y],'.')
    plt.plot(d[-1, x], d[-1, y], 'k*', label='end')

    # Arrow
    for s in range(len(d) - 3):
        if s % 2:
            plt.arrow(d[s, x],
                      d[s, y],
                      d[s + 3, x] - d[s, x],
                      d[s + 3, y] - d[s, y],
                      head_width=0.001,
                      width=0.0,
                      ec='green',
                      facecolor='green',
                      alpha=0.5)

    plt.title('  num points:' + str(len(d)))
    # plt.legend()
    plt.axis([-0.08, 0.08, 0.07, 0.17], 'equal')

    plt.grid()
    plt.gca().set_aspect("equal")

    fig.add_subplot(3, 2, 2)

    plt.title('YAW')
    plt.plot(d[:, 2] * 180 / 3.14, 'o', markersize=1)

    fig.add_subplot(3, 2, 3)
    #         obs = np.concatenate((self.obj_pos,                               2   0,1
    #                               self.rot_angle,                             1   2
    #                               self.gripper_pos,                           2   3,4
    #                               self.gripper_load,                          2   5,6
    #                               self.gripper_force))                        2   7,8

    plt.title('Motor load')
    plt.plot(d[:, 5], 'o', markersize=1)
    plt.plot(d[:, 6], 'o', markersize=1)

    fig.add_subplot(3, 2, 5)
    plt.title('motor angle')
    plt.plot(d[:, 3], 'o', markersize=1)
    plt.plot(d[:, 4], 'o', markersize=1)

    fig.add_subplot(3, 2, 6)
    plt.title('target pos')
    plt.plot(tp[:, 0], 'o', markersize=1)
    plt.plot(tp[:, 1], 'o', markersize=1)
    fig.savefig(tofile)


if rollout:
    
    files = glob.glob(path + "*.txt")
    logdir_prefix = 'rollout'
    if not (os.path.exists(path)):
        os.makedirs(path)
    print(files)

    # for i in range(len(files)):
    i=0

    action_file = files[i]
    npfile = action_file[:-4]
    logdir = logdir_prefix + '_' + npfile
    index = time.strftime("%d-%m-%Y_%H-%M-%S")
    logdir = path
    if duck:
        logdir += "duck/"
    elif knife:
        logdir += "knife/"
    elif gum:
        logdir += "gum/"
    elif broom:
        logdir += "broom/"
    elif rubiks_cube:
        logdir += "rubiks_cube/"
    elif blob:
        logdir += "blob/"
    elif halfcircle:
        logdir += "halfcircle/"
    elif circle:
        logdir += "circle/"
    elif david:
        logdir += "david/"
    elif crescent:
        logdir += "crescent/"
    elif square:
        logdir += "square/"
    elif cylinder:
        logdir += "cylinder/"
    elif hexagon:
        logdir += "hexagon/"
    else:
        rospy.logwarn("CAUTION: Shape hasn't been selected, dumping files into main directory.")

    if not (os.path.exists(logdir)):
        os.makedirs(logdir)

    print("\nLOGGING TO: " + logdir +  "\n")

    print('Rolling-out file number ' + str(i+1) + ': ' + action_file + '.\n')

    A = np.loadtxt(action_file, delimiter=',', dtype=float)[:,:2]

    matches = ["4", "8", "2"]

    if any(x in action_file for x in matches):
        Af = A.reshape((-1,))
        Af *= 10
    else:
        A[:10, :] *= 0.5
        Af = A.reshape((-1,))
        Af /= 10

    for j in range(100):
        # conduct j numbers of each rollouts
        rospy.sleep(2)

        # msg = rospy.wait_for_message('/gripper/force', Float32MultiArray)
        # gripper_force = msg.data


        resp = rollout_srv(Af)
        A = np.array(resp.actions).reshape(-1, action_dim)
        S = np.array(resp.states).reshape(-1, state_dim)
        S[:, :2] = A
        S = np.delete(S, (2), axis=1)
        NS = np.array(resp.next_states).reshape(-1, state_dim)
        T = np.array(resp.time).reshape(-1, 1)
        TP = np.array(resp.target_pos).reshape(-1, action_dim)

        rospy.sleep(2)



        # transition = {"observation": S[:, :],
        #                 "action": A[:, :],
        #                 "target_pos": TP[:, :],
        #                 "next_observation": NS[:, :],
        #                 "time": T[:],
        #                 "success": resp.success,
        #                 "reason": resp.reason}

        print('suc: ' + resp.reason + '\tnum_actions: '+ str(len(A)))

        if len(S) <= 100:
            continue

        z = 1
        if duck:
            prefix = "duck"
        elif knife:
            prefix = "knife"
        elif gum:
            prefix = "gum"
        elif broom:
            prefix = "broom"
        elif rubiks_cube:
            prefix = "rubiks_cube"
        elif blob:
            prefix = "blob"
        elif halfcircle:
            prefix = "halfcircle"
        elif circle:
            prefix = "circle"
        elif david:
            prefix = "david"
        elif crescent:
            prefix = "crescent"
        elif square:
            prefix = "square"
        elif cylinder:
            prefix = "cylinder"
        elif hexagon:
            prefix = "hexagon"
            
        path = logdir+prefix+str(z)+'.npy'
        while os.path.exists(path):
            z += 1
            path = logdir+'/'+prefix+str(z)+'.npy'
        


        file_name = prefix + str(z)
        print(file_name)
        np.save(logdir + '/' + file_name + '.npy', S)

        # if save_graph:
        #     graphs_dir = logdir + '/graphs'
        #     if not (os.path.exists(graphs_dir)):
        #         os.makedirs(graphs_dir)
        #     save_display(S,TP, graphs_dir + '/' + file_name)

        # if save_trans:
        #     trans = logdir + '/transition'
        #     if not (os.path.exists(trans)):
        #         os.makedirs(trans)
        #     with open(trans + '/' + file_name + '.pickle', 'wb') as handle:
        #         pickle.dump(transition, handle, protocol=pickle.HIGHEST_PROTOCOL)

