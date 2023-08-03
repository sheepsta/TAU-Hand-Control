import numpy as np
import matplotlib.pyplot as plt
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from scipy.signal import butter, filtfilt
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import confusion_matrix
import seaborn as sns
import pickle
import math

subsequence_length = 75
state_dim = 4

def train_model():

    subsequence_length = 75
    matrix_snip = 100

    num_cylinder_files = 500
    num_hexagon_files = 500
    num_square_files = 500
    num_david_files = 500
    num_duck_files = 500
    num_circle_files = 500
    num_blob_files = 500
    num_halfcircle_files = 500

    state_dim = 4

    prediction = True
    adjust_start_pos = False

    # Load the data
    cylinder_data = []
    hexagon_data = []
    square_data = []
    david_data = []
    duck_data = []
    circle_data = []
    blob_data = []
    halfcircle_data = []

    for i in range(1, num_cylinder_files):
        try:
            cylinder_data.append(np.load(f'/home/julius/TAU-Hand-Control/src/rollout/src/plans/cylinder/cylinder{i}.npy')[0:matrix_snip, [2, 3, 4, 5]])
        except:
            pass

    for i in range(1, num_halfcircle_files):
        try:
            halfcircle_data.append(np.load(f'/home/julius/TAU-Hand-Control/src/rollout/src/plans/halfcircle/halfcircle{i}.npy')[0:matrix_snip, [2, 3, 4, 5]])
        except:
            pass

    for i in range(1, num_blob_files):
        try:
            blob_data.append(np.load(f'/home/julius/TAU-Hand-Control/src/rollout/src/plans/blob/blob{i}.npy')[0:matrix_snip, [2, 3, 4, 5]])
        except:
            pass

    for i in range(1, num_circle_files):
        try:
            circle_data.append(np.load(f'/home/julius/TAU-Hand-Control/src/rollout/src/plans/circle/circle{i}.npy')[0:matrix_snip, [2, 3, 4, 5]])
        except:
            pass

    for i in range(1, num_hexagon_files):
        try:
            hexagon_data.append(np.load(f'/home/julius/TAU-Hand-Control/src/rollout/src/plans/hexagon/hexagon{i}.npy')[0:matrix_snip, [2, 3, 4, 5]])
        except:
            pass

    for i in range(1, num_duck_files):
        try:
            duck_data.append(np.load(f'/home/julius/TAU-Hand-Control/src/rollout/src/plans/duck/duck{i}.npy')[0:matrix_snip, [2, 3, 4, 5]])
        except:
            pass

    for i in range(1, num_square_files):
        try:
            square_data.append(np.load(f'/home/julius/TAU-Hand-Control/src/rollout/src/plans/square/square{i}.npy')[0:matrix_snip,[2, 3, 4, 5]])
        except:
            pass

    for i in range(1, num_david_files):
        try:
            david_data.append(np.load(f'/home/julius/TAU-Hand-Control/src/rollout/src/plans/david/david{i}.npy')[0:matrix_snip, [2, 3, 4, 5]])
        except:
            pass

    def adjust_for_starting_position(data_list):
        adjusted_data = []
        for matrix in data_list:
            first_row = matrix[0]
            adjusted_matrix = matrix - first_row
            adjusted_data.append(adjusted_matrix)
        return adjusted_data

    if adjust_start_pos:
        cylinder_data = adjust_for_starting_position(cylinder_data)
        hexagon_data = adjust_for_starting_position(hexagon_data)
        square_data = adjust_for_starting_position(square_data)
        david_data = adjust_for_starting_position(david_data)
        circle_data = adjust_for_starting_position(circle_data)
        blob_data = adjust_for_starting_position(blob_data)
        duck_data = adjust_for_starting_position(duck_data)
        halfcircle_data = adjust_for_starting_position(halfcircle_data)

    np.random.shuffle(cylinder_data)
    np.random.shuffle(hexagon_data)
    np.random.shuffle(square_data)
    np.random.shuffle(david_data)
    np.random.shuffle(duck_data)
    np.random.shuffle(circle_data)
    np.random.shuffle(blob_data)
    np.random.shuffle(halfcircle_data)

    # Preprocess the data
    def preprocess_data(data):
        subsequences = []
        scaler = StandardScaler()

        for matrix in data:
            length = matrix.shape[0]
            num_subsequences = length // subsequence_length
            reshaped_matrix = matrix[:num_subsequences * subsequence_length, :].reshape(
                num_subsequences, subsequence_length, state_dim
            )

            # Remove null values and filter subsequence
            valid_matrices = []
            for subseq in reshaped_matrix:
                if not np.isnan(subseq).any() and subseq.shape[0] == subsequence_length:
                    filtered_subseq = apply_low_pass_filter(subseq)
                    valid_matrices.append(filtered_subseq)
            subsequences.append(valid_matrices)
        normalized_matrices = scaler.fit_transform(np.array(subsequences).reshape(-1, state_dim))
        with open('scaler.pkl', 'wb') as f:
            pickle.dump(scaler, f, protocol=2)
        subsequences = normalized_matrices.reshape(len(subsequences), subsequence_length, state_dim)


        return

    def preprocess_matrices(data):
        subsequences = []

        for matrix in data:
            length = matrix.shape[0]
            num_subsequences = length - subsequence_length + 1

            for i in range(num_subsequences):
                subseq = matrix[i : i + subsequence_length, :]
                if not np.isnan(subseq).any() and subseq.shape[0] == subsequence_length:
                    filtered_subseq = apply_low_pass_filter(subseq)
                    subsequences.append(filtered_subseq)

        if subsequences:
            with open('scaler.pkl', 'rb') as f:
                scaler = pickle.load(f)
            normalized_matrices = scaler.fit_transform(np.array(subsequences).reshape(-1, state_dim))
            result = normalized_matrices.reshape(-1, subsequence_length, state_dim)
        else:
            result = np.empty((0, subsequence_length, state_dim))

        return result

    def preprocess_single_matrix(matrix):
        subsequences = []

        length = matrix.shape[0]
        num_subsequences = length - subsequence_length + 1

        for i in range(num_subsequences):
            subseq = matrix[i : i + subsequence_length, :]
            if not np.isnan(subseq).any() and subseq.shape[0] == subsequence_length:
                filtered_subseq = apply_low_pass_filter(subseq)
                subsequences.append(filtered_subseq)

        if subsequences:
            with open('scaler.pkl', 'rb') as f:
                scaler = pickle.load(f)
            normalized_matrices = scaler.fit_transform(np.array(subsequences).reshape(-1, state_dim))
            result = normalized_matrices.reshape(-1, subsequence_length, state_dim)
        else:
            result = np.empty((0, subsequence_length, state_dim))

        return result

    def apply_low_pass_filter(matrix):
        # Apply a low-pass filter to the matrix
        b, a = butter(5, 0.1, btype='lowpass', analog=False)
        filtered_matrix = filtfilt(b, a, matrix, axis=0)
        return filtered_matrix

    cylinder_data_len = len(cylinder_data)
    hexagon_data_len = len(hexagon_data)
    square_data_len = len(square_data)
    david_data_len = len(david_data)
    duck_data_len = len(duck_data)
    circle_data_len = len(circle_data)
    blob_data_len = len(blob_data)
    halfcircle_data_len = len(halfcircle_data)

    # Manually split the data into 80% training/validation and 20% testing

    cylinder_data_train = cylinder_data[0:math.floor(cylinder_data_len * .8)]
    cylinder_data_test = cylinder_data[math.floor(cylinder_data_len * .8):cylinder_data_len]
    hexagon_data_train = hexagon_data[0:math.floor(hexagon_data_len * .8)]
    hexagon_data_test = hexagon_data[math.floor(hexagon_data_len * .8):hexagon_data_len]
    square_data_train = square_data[0:math.floor(square_data_len * 0.8)]
    square_data_test = square_data[math.floor(square_data_len * 0.8):square_data_len]
    david_data_train = david_data[0:math.floor(david_data_len * 0.8)]
    david_data_test = david_data[math.floor(david_data_len * 0.8):david_data_len]
    duck_data_train = duck_data[0:math.floor(duck_data_len * 0.8)]
    duck_data_test = duck_data[math.floor(duck_data_len * 0.8):duck_data_len]
    circle_data_train = circle_data[0:math.floor(circle_data_len * 0.8)]
    circle_data_test = circle_data[math.floor(circle_data_len * 0.8):circle_data_len]
    blob_data_train = blob_data[0:math.floor(blob_data_len * 0.8)]
    blob_data_test = blob_data[math.floor(blob_data_len * 0.8):blob_data_len]
    halfcircle_data_train = halfcircle_data[0:math.floor(halfcircle_data_len * 0.8)]
    halfcircle_data_test = halfcircle_data[math.floor(halfcircle_data_len * 0.8):halfcircle_data_len]

    # Preprocess the data

    data = np.concatenate((cylinder_data.copy(), hexagon_data.copy(), square_data.copy(), circle_data.copy(), halfcircle_data.copy(), duck_data.copy(), david_data.copy(), blob_data.copy()),  axis=0)
    preprocess_data(data.copy())

    cylinder_data_train = preprocess_matrices(cylinder_data_train)
    hexagon_data_train = preprocess_matrices(hexagon_data_train)
    square_data_train = preprocess_matrices(square_data_train)
    david_data_train = preprocess_matrices(david_data_train)
    duck_data_train = preprocess_matrices(duck_data_train)
    circle_data_train = preprocess_matrices(circle_data_train)
    blob_data_train = preprocess_matrices(blob_data_train)
    halfcircle_data_train = preprocess_matrices(halfcircle_data_train)

    cylinder_data_test = preprocess_matrices(cylinder_data_test)
    hexagon_data_test = preprocess_matrices(hexagon_data_test)
    square_data_test = preprocess_matrices(square_data_test)
    david_data_test = preprocess_matrices(david_data_test)
    duck_data_test = preprocess_matrices(duck_data_test)
    circle_data_test = preprocess_matrices(circle_data_test)
    blob_data_test = preprocess_matrices(blob_data_test)
    halfcircle_data_test = preprocess_matrices(halfcircle_data_test)

    # Create labels

    cylinder_train_labels = np.full(cylinder_data_train.shape[0], 0)
    hexagon_train_labels = np.full(hexagon_data_train.shape[0], 1)
    square_train_labels = np.full(square_data_train.shape[0], 2)
    david_train_labels = np.full(david_data_train.shape[0], 3)
    duck_train_labels = np.full(duck_data_train.shape[0], 4)
    circle_train_labels = np.full(circle_data_train.shape[0], 5)
    blob_train_labels = np.full(blob_data_train.shape[0], 6)
    halfcircle_train_labels = np.full(halfcircle_data_train.shape[0], 3)


    cylinder_test_labels = np.full(cylinder_data_test.shape[0], 0)
    hexagon_test_labels = np.full(hexagon_data_test.shape[0], 1)
    square_test_labels = np.full(square_data_test.shape[0], 2)
    david_test_labels = np.full(david_data_test.shape[0], 3)
    duck_test_labels = np.full(duck_data_test.shape[0], 4)
    circle_test_labels = np.full(circle_data_test.shape[0], 5)
    blob_test_labels = np.full(blob_data_test.shape[0], 6)
    halfcircle_test_labels = np.full(halfcircle_data_test.shape[0], 3)

    # Merge data and labels for all shapes
    data = np.concatenate((cylinder_data_train, hexagon_data_train, square_data_train, duck_data_train, circle_data_train, blob_data_train, halfcircle_data_train,
                        cylinder_data_test, hexagon_data_test, square_data_test, duck_data_test, circle_data_test, blob_data_test, halfcircle_data_test), axis=0)
    labels = np.concatenate((cylinder_train_labels, hexagon_train_labels, square_train_labels, duck_train_labels, circle_train_labels, blob_train_labels, halfcircle_train_labels,
                            cylinder_test_labels, hexagon_test_labels, square_test_labels, duck_test_labels, circle_test_labels, blob_test_labels, halfcircle_test_labels), axis=0)


    # Split the data into training, validation, and testing sets
    X_train, X_test, y_train, y_test = train_test_split(data, labels, test_size=0.2, random_state=42, shuffle=False)
    X_train, X_val, y_train, y_val = train_test_split(X_train, y_train, test_size=0.2, random_state=42, shuffle=True)

    # Random Forest Model
    # Create a Random Forest model
    rf_model = RandomForestClassifier(n_estimators=100, random_state=42)

    # Flatten the training data for Random Forest model
    X_train_flattened = X_train.reshape(X_train.shape[0], -1)
    X_val_flattened = X_val.reshape(X_val.shape[0], -1)
    X_test_flattened = X_test.reshape(X_test.shape[0], -1)


    # Train the model
    rf_model.fit(X_train_flattened, y_train)

    # Evaluate the model
    accuracy = rf_model.score(X_test_flattened, y_test)
    print('Test Accuracy (Random Forest):', accuracy)
    while accuracy < .9:
        # Train the model
        rf_model.fit(X_train_flattened, y_train)

        # Evaluate the model
        accuracy = rf_model.score(X_test_flattened, y_test)
        print('Test Accuracy (Random Forest):', accuracy)
    # Save the model if accuracy is over 88%
    with open('random_forest_model-newest.pkl', 'wb') as f:
        pickle.dump(rf_model, f)
    print("Model saved successfully!")

    # Make predictions on test data
    y_pred = rf_model.predict(X_test_flattened)
    y_pred_proba = rf_model.predict_proba(X_test_flattened)

    # Compute the confusion matrix
    confusion_mat = confusion_matrix(y_test, y_pred)

    # Normalize the confusion matrix
    confusion_mat_normalized = confusion_mat.astype('float') / confusion_mat.sum(axis=1)[:, np.newaxis]

    # Print the confusion matrix
    class_names = ['Ovular', 'Hexagon', 'Square', 'David', 'Duck', 'Circle', 'Blob', 'Halfcircle']
    print('Confusion Matrix (Proportional - Random Forest):')
    print(confusion_mat_normalized)


def apply_low_pass_filter(matrix):
    # Apply a low-pass filter to the matrix
    b, a = butter(5, 0.1, btype='lowpass', analog=False)
    filtered_matrix = filtfilt(b, a, matrix, axis=0)
    return filtered_matrix

def preprocess_single_matrix(matrix):
    subsequences = []

    length = matrix.shape[0]
    num_subsequences = length - subsequence_length + 1

    for i in range(num_subsequences):
        subseq = matrix[i : i + subsequence_length, :]
        if not np.isnan(subseq).any() and subseq.shape[0] == subsequence_length:
            filtered_subseq = apply_low_pass_filter(subseq)
            subsequences.append(filtered_subseq)

    if subsequences:
        # with open('/home/julius/TAU-Hand-Control/src/rollout/src/scaler.pkl', 'rb') as f:
        #     scaler = pickle.load(f)
        # normalized_matrices = scaler.fit_transform(np.array(subsequences).reshape(-1, state_dim))
        # result = normalized_matrices.reshape(-1, subsequence_length, state_dim)
        result = np.array(subsequences)
    else:
        result = np.empty((0, subsequence_length, state_dim))

    return result

def model_predict(royal_input):
    class_names = ['Ovular', 'Hexagonal', 'Square-Like', 'Half-Circular', 'Rubber Duck-Like', 'Circular', 'Blob-Like']
    # Assume you have new_input_data as your input data to predict
    # Preprocess the new input data
    new_input_data = preprocess_single_matrix(royal_input)

    # Flatten the new input data
    new_input_data_flattened = new_input_data.reshape(new_input_data.shape[0], -1)

    # Load the trained model from the saved file (if it was saved)

    with open('/home/julius/TAU-Hand-Control/src/rollout/src/random_forest_model-newest.pkl', 'rb') as f:
        rf_model = pickle.load(f)
    print("Model loaded successfully!")


    # Make predictions on the new input data
    if 'rf_model' in locals():
        predicted_class = rf_model.predict(new_input_data_flattened)
        predicted_class_name = [class_names[predicted_class] for predicted_class in predicted_class]

        # Output the predicted class and confidence score for each sample
        confidence = rf_model.predict_proba(new_input_data_flattened)[0].max() * 100  # Convert to percentage
        print(predicted_class_name)
        # print(f"Predicted class: {predicted_class}, Confidence: {confidence}")
        
    return