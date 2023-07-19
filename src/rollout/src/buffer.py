# Julius Arolovitch, last updated 06.12.2023

import numpy as np
from numpy import savetxt
import os
import math

# Takes input as numpy matrix, need to specify # of segments into which to cut the trial. 
# Specifying path is optional. Default saved to data folder. 
# Specifying trial number is optional. Default is 1.

def splice_trial(matrix, segments, path='catkin_ws/rollout/data/', trial_number=1):
    # Specify path, automatically iterate to higher trial number if inputted trial number already recorded
    save_path = path + 'trial_' + str(trial_number)
    while os.path.exists(save_path):
        trial_number += 1
        save_path = path + 'trial_' + str(trial_number)
    # Create a folder for the trial
    os.mkdir(save_path)
    print(f"Folder created for trial {trial_number}, under path {save_path}")

    # Ignore part of matrix that doesn't evenly fit in a segment
    matrix_dim = matrix.shape
    segment_len = math.floor(matrix_dim[1]/segments)

    # Only consider starting from 2nd position in matrix, since matrix initialized as 6x1 zeros matrix
    for i in range(1, segments*segment_len):
        segmented_matrix = matrix[0:matrix_dim[0], i*segment_len:(i+1)*segment_len]
        np.savetxt(save_path + "/segment_" + str(i+1), segmented_matrix, delimiter=",")

