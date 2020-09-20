# from __future__ import print_function
import numpy as np
import keras
from keras.datasets import mnist
from keras.models import Sequential
from keras.layers import Dense, Dropout, Flatten
from keras.layers import Conv2D, MaxPooling2D
from keras import backend as K
import sys
import matplotlib.pyplot as plt
from keras.models import model_from_json
import os, time

np.set_printoptions(suppress=True, threshold=sys.maxsize)

# if os.path.exists("input.txt"):
#     print("Yep - found it")
# if os.path.isfile("input.txt"):
#     print("that's a file alright")

# load json and create model
json_file = open('model.json', 'r')
loaded_model_json = json_file.read()
json_file.close()
loaded_model = model_from_json(loaded_model_json)
# load weights into new model
loaded_model.load_weights("model.h5")
print("Loaded model from disk")
 
def sigmoid(x):
  return (1/(1 + np.exp(-x)))

# evaluate loaded model on test data
# loaded_model.compile(loss='binary_crossentropy', optimizer='rmsprop', metrics=['accuracy'])
# score = loaded_model.evaluate(x_test, y_test, verbose=0)
# print("%s: %.2f%%" % (loaded_model.metrics_names[1], score[1]*100))

weights = loaded_model.get_weights()

weights1 = loaded_model.layers[1].get_weights()[0]
biases1 = loaded_model.layers[1].get_weights()[1]

weights2 = loaded_model.layers[2].get_weights()[0]
biases2 = loaded_model.layers[2].get_weights()[1]

# print(time.ctime(moddate))

last_moddate = 0

# while True:
    # check if the input.txt file has been changed
    # moddate = os.stat("input.txt")[8] # there are 10 attributes this call returns and you want the next to last
    # print(moddate)
    
    # if moddate != last_moddate:
results1layer = np.zeros(16)
results2layer = np.zeros(10)
results = np.zeros(100)
x_in = []

while len(x_in) != 784:
    x_in = []
    with open('x/x0.txt', 'r') as f:
        for line in f:
            if line: #avoid blank lines
                x_in = np.append(x_in, float(line.strip()))
    print("Waiting for full input. Input size = ", len(x_in))


# print("1st layer output:")
for i in range(16):
    results1layer[i] = sigmoid(np.dot(x_in, weights1[:,i]) + biases1[i])
    # print("%5.8f" % results1layer[i])

print("\n2nd layer output:")
for i in range(10):
    results2layer[i] = sigmoid(np.dot(results1layer, weights2[:,i]) + biases2[i])
    print(i, "|", format(results2layer[i], '.8f'))

print("Prediction:", np.argmax(results2layer))

    # save current file moddate 
    # last_moddate = moddate
    
  