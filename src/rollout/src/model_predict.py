# Julius Arolovich, last updated 07/06/2023

import numpy as np
import matplotlib.pyplot as plt
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from scipy.signal import butter, filtfilt
from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import Conv1D, MaxPooling1D, Flatten, Dense
from tensorflow.keras.optimizers import Adam
from tensorflow.keras.callbacks import EarlyStopping
import math
import datetime

def train_model():
    subsequence_length = 50
    matrix_snip = 100

    num_hex_files = 200
    num_cyl_files = 200
    num_david_files = 86  # Number of Star of David prism files
    num_rect_files = 100  # Number of rectangular prism files
    num_circle_files = 80  # Number of circular prism files
    num_duck_files = 40  # Number of rubber duck files

    num_hex_consider = math.floor(num_hex_files / 5)
    num_cyl_consider = math.floor(num_cyl_files / 5)
    num_david_consider = math.floor(num_david_files / 5)
    num_rect_consider = math.floor(num_rect_files / 5)
    num_circle_consider = math.floor(num_circle_files / 5)
    num_duck_consider = math.floor(num_duck_files / 5)


    # Load the data
    cylinder_data = []
    hexagon_data = []
    david_data = []  # Star of David prism data
    rect_data = []  # Rectangular prism data
    circle_data = []  # Circular prism data
    duck_data = []  # Rubber duck data

    for i in range(1, num_cyl_files + 1):
        try:
            cylinder_data.append(np.load(f'cylinder{i}.npy')[0:matrix_snip, :])
        except:
            pass

    for i in range(1, num_hex_files + 1):
        try:
            hexagon_data.append(np.load(f'hexagon{i}.npy')[0:matrix_snip, :])
        except:
            pass

    for i in range(-1, num_david_files + 1):
        try:
            david_data.append(np.load(f'david{i}.npy')[0:matrix_snip, :])
        except:
            pass

    for i in range(1, num_rect_files + 1):
        try:
            rect_data.append(np.load(f'rectangle{i}.npy')[0:matrix_snip, :])
        except:
            pass

    for i in range(1, num_circle_files + 1):
        try:
            circle_data.append(np.load(f'circle{i}.npy')[0:matrix_snip, :])
        except:
            pass

    for i in range(1, num_duck_files + 1):
        try:
            duck_data.append(np.load(f'duck{i}.npy')[0:matrix_snip, :])
        except:
            pass

    for matrix in hexagon_data:
        if matrix.shape[0] < matrix_minlen:
            matrix_minlen = matrix.shape[0]
        if matrix.shape[0] > matrix_maxlen:
            matrix_maxlen = matrix.shape[0]

    for matrix in cylinder_data:
        if matrix.shape[0] < matrix_minlen:
            matrix_minlen = matrix.shape[0]
        if matrix.shape[0] > matrix_maxlen:
            matrix_maxlen = matrix.shape[0]

    for matrix in david_data:
        if matrix.shape[0] < matrix_minlen:
            matrix_minlen = matrix.shape[0]
        if matrix.shape[0] > matrix_maxlen:
            matrix_maxlen = matrix.shape[0]

    for matrix in duck_data:
        if matrix.shape[0] < matrix_minlen:
            matrix_minlen = matrix.shape[0]
        if matrix.shape[0] > matrix_maxlen:
            matrix_maxlen = matrix.shape[0]

    for matrix in circle_data:
        if matrix.shape[0] < matrix_minlen:
            matrix_minlen = matrix.shape[0]
        if matrix.shape[0] > matrix_maxlen:
            matrix_maxlen = matrix.shape[0]

    # Preprocess the data
    def preprocess_data(data):
        subsequences = []
        scaler = StandardScaler()

        for matrix in data:
            length = matrix.shape[0]
            num_subsequences = length // subsequence_length
            reshaped_matrix = matrix[:num_subsequences * subsequence_length, :].reshape(
                num_subsequences, subsequence_length, 7
            )

            # Remove null values and filter subsequence
            valid_matrices = []
            for subseq in reshaped_matrix:
                if not np.isnan(subseq).any() and subseq.shape[0] == subsequence_length:
                    filtered_subseq = apply_low_pass_filter(subseq)
                    valid_matrices.append(filtered_subseq)

            if valid_matrices:
                normalized_matrices = scaler.fit_transform(np.array(valid_matrices).reshape(-1, 7))
                subsequences.append(normalized_matrices.reshape(len(valid_matrices), subsequence_length, 7))

        return np.concatenate(subsequences)


    def apply_low_pass_filter(matrix):
        # Apply a low-pass filter to the matrix
        b, a = butter(4, 0.1, btype='lowpass', analog=False)
        filtered_matrix = filtfilt(b, a, matrix, axis=0)
        return filtered_matrix


    cylinder_data_len = len(cylinder_data)
    hexagon_data_len = len(hexagon_data)
    david_data_len = len(david_data)
    # rect_data_len = len(rect_data)
    circle_data_len = len(circle_data)
    duck_data_len = len(duck_data)

    # Manually split the data into 80% training/validation and 20% testing

    cylinder_data_train = cylinder_data[0:math.floor(cylinder_data_len * .8)]
    cylinder_data_test = cylinder_data[math.floor(cylinder_data_len * .8):cylinder_data_len]
    hexagon_data_train = hexagon_data[0:math.floor(hexagon_data_len * .8)]
    hexagon_data_test = hexagon_data[math.floor(hexagon_data_len * .8):hexagon_data_len]
    david_data_train = david_data[0:math.floor(david_data_len * .8)]
    david_data_test = david_data[math.floor(david_data_len * .8):david_data_len]
    # rect_data_train = rect_data[0:math.floor(rect_data_len * .8)]
    # rect_data_test = rect_data[math.floor(rect_data_len * .8):rect_data_len]
    circle_data_train = circle_data[0:math.floor(circle_data_len * .8)]
    circle_data_test = circle_data[math.floor(circle_data_len * .8):circle_data_len]
    duck_data_train = duck_data[0:math.floor(duck_data_len * .8)]
    duck_data_test = duck_data[math.floor(duck_data_len * .8):duck_data_len]

    # Preprocess the data

    cylinder_data_train = preprocess_data(cylinder_data_train)
    hexagon_data_train = preprocess_data(hexagon_data_train)
    david_data_train = preprocess_data(david_data_train)
    # rect_data_train = preprocess_data(rect_data_train)
    circle_data_train = preprocess_data(circle_data_train)
    duck_data_train = preprocess_data(duck_data_train)

    cylinder_data_test = preprocess_data(cylinder_data_test)
    hexagon_data_test = preprocess_data(hexagon_data_test)
    david_data_test = preprocess_data(david_data_test)
    # rect_data_test = preprocess_data(rect_data_test)
    circle_data_test = preprocess_data(circle_data_test)
    duck_data_test = preprocess_data(duck_data_test)

    # Create labels
    cylinder_train_labels = np.zeros(cylinder_data_train.shape[0])
    hexagon_train_labels = np.ones(hexagon_data_train.shape[0])
    david_train_labels = np.full(david_data_train.shape[0], 2)
    # rect_train_labels = np.full(rect_data_train.shape[0], 3)
    circle_train_labels = np.full(circle_data_train.shape[0], 4)
    duck_train_labels = np.full(duck_data_train.shape[0], 5)

    cylinder_test_labels = np.zeros(cylinder_data_test.shape[0])
    hexagon_test_labels = np.ones(hexagon_data_test.shape[0])
    david_test_labels = np.full(david_data_test.shape[0], 2)
    # rect_test_labels = np.full(rect_data_test.shape[0], 3)
    circle_test_labels = np.full(circle_data_test.shape[0], 4)
    duck_test_labels = np.full(duck_data_test.shape[0], 5)

    # Merge data and labels
    data = np.concatenate((cylinder_data_train, hexagon_data_train, david_data_train,
                        circle_data_train, duck_data_train,
                        cylinder_data_test, hexagon_data_test, david_data_test,
                        circle_data_test, duck_data_test), axis=0)
    labels = np.concatenate((cylinder_train_labels, hexagon_train_labels, david_train_labels,
                            circle_train_labels, duck_train_labels,
                            cylinder_test_labels, hexagon_test_labels, david_test_labels,
                            circle_test_labels, duck_test_labels), axis=0)

    # Split the data into training, validation, and testing sets
    X_train, X_test, y_train, y_test = train_test_split(data, labels, test_size=0.2, random_state=42, shuffle=False)
    X_train, X_val, y_train, y_val = train_test_split(X_train, y_train, test_size=0.2, random_state=42)

    # Build the TCN CNN model
    model = Sequential([
        Conv1D(32, kernel_size=3, activation='relu', input_shape=(subsequence_length, 7)),
        MaxPooling1D(pool_size=2),
        Conv1D(64, kernel_size=3, activation='relu'),
        MaxPooling1D(pool_size=2),
        Flatten(),
        Dense(64, activation='relu'),
        Dense(6, activation='softmax')  # Updated for the six classes (cylinder, hexagon, Star of David, rectangle, circle, and rubber duck)
    ])

    # Compile the model
    model.compile(optimizer=Adam(learning_rate=0.001), loss='sparse_categorical_crossentropy', metrics=['accuracy'])

    # Define early stopping criteria
    early_stopping = EarlyStopping(monitor='val_loss', patience=5)

    # Train the model with early stopping
    history = model.fit(X_train, y_train, validation_data=(X_val, y_val), epochs=100, batch_size=32, callbacks=[early_stopping])

    # Evaluate the model
    loss, accuracy = model.evaluate(X_test, y_test)

    # Print the loss and accuracy results
    print('Test Loss:', loss)
    print('Test Accuracy:', accuracy)

    model.save('trained_model.h5')
    return 1

def model_predict(time_series):

    # Detect null values in the last 50 timesteps
    def detect_null_values(matrix):
        shape = matrix.shape
        for i in range(0, shape[0]):
            for j in range(0, shape[1]):
                if np.isnan(matrix[i, j]):
                    return True
        return False
    
    def apply_low_pass_filter(matrix):
        # Apply a low-pass filter to the matrix
        b, a = butter(4, 0.1, btype='lowpass', analog=False)
        filtered_matrix = filtfilt(b, a, matrix, axis=0)
        return filtered_matrix
    
    # Output decision tree
    series_shape = time_series.shape
    if series_shape[0] < 50:
        return "Not enough data. Please wait for prediction"
    elif detect_null_values(time_series[series_shape[0]-50:series_shape[0],:]):
        return "Null values detected in last 50 timesteps. Please wait for prediction."
    else:
        time_series = apply_low_pass_filter(time_series[series_shape[0]-50:series_shape[0], :])
    model = model.load('trained_model.h5')
    return model.predict(time_series)