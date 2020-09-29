from __future__ import print_function
import numpy as np
import keras
from keras.datasets import mnist
from keras.models import Sequential
from keras.layers import Dense, Dropout, Flatten
from keras.layers import Conv2D, MaxPooling2D
from keras import backend as K
import sys
import matplotlib.pyplot as plt
import time


np.set_printoptions(suppress=True, threshold=sys.maxsize)

batch_size = 128
num_classes = 10
epochs = 50

(x_train, y_train), (x_test, y_test) = mnist.load_data()

with open('test_labels.txt', 'w') as f:
  for i in range(10000):
    f.write("%d\n" % y_test[i])

# plotting digits
# plt.figure(figsize=(11,6))
# for i in range(66):
#     plt.subplot(6,11,i+1)
#     plt.imshow(x_test[i], cmap='gray')
#     plt.xticks([])
#     plt.yticks([])

# plt.tight_layout()
# plt.show()

# for plotting digits later 
x_draw = x_test

x_train = x_train.astype('float32')
x_test = x_test.astype('float32')
x_train /= 255
x_test /= 255 

# Make sure images have shape (28, 28, 1)
# x_train = np.expand_dims(x_train, -1)
# x_test = np.expand_dims(x_test, -1)
# print("x_train shape:", x_train.shape)
# print(x_train.shape[0], "train samples")
# print(x_test.shape[0], "test samples")

# convert class vectors to binary class matrices
y_train = keras.utils.to_categorical(y_train, num_classes)
y_test = keras.utils.to_categorical(y_test, num_classes)

model = Sequential()
# model.add(Conv2D(32, kernel_size=(3, 3), activation='sigmoid'))
# model.add(MaxPooling2D(pool_size=(2, 2)))
# model.add(Dropout(0.25))
model.add(Flatten())
# model.add(Dense(64, use_bias=True, activation='sigmoid'))
model.add(Dense(16, use_bias=True, activation='sigmoid'))
# model.add(Dropout(0.5))
model.add(Dense(num_classes, use_bias=True, activation='sigmoid'))

model.compile(loss=keras.losses.categorical_crossentropy,
              optimizer=keras.optimizers.Adam(),
              metrics=['accuracy'])

history = model.fit(x_train, y_train,
          batch_size=batch_size,
          epochs=epochs,
          verbose=1,
          validation_data=(x_test, y_test))

score = model.evaluate(x_test, y_test, verbose=2)
print('Test loss:', score[0])
print('Test accuracy:', score[1])

weights = model.get_weights()

# measure elapsed time
start = time.time()
predictions = model.predict(x_test)
end = time.time()
print("Elapsed time for 10000 digits: " + str(end - start))

for img in range(10):
  # measure elapsed time
  start = time.time()
  predictions = model.predict(x_test[0:1])
  end = time.time()
  print("Elapsed time for digit no. " + str(img) + ": " + str(end - start))


plt.figure(num=None, figsize=(12, 6), dpi=80, facecolor='w', edgecolor='k')
plt.plot(history.history['accuracy'])
plt.plot(history.history['val_accuracy'])
plt.title('model accuracy')
plt.grid()
plt.ylabel('accuracy')
plt.xlabel('epoch')
plt.legend(['training', 'validation'], loc='upper left')
# plt.savefig('accuracy1.png')
plt.show()

# for i in range(10):
#   recognized_digit = np.argmax(predictions[i])
#   print("x_test no. " + str(i) + " recognized digit: " + str(recognized_digit) + " with output = " + str(predictions[i][recognized_digit]))
  # fig = plt.figure
  # plt.imshow(x_draw[i], cmap='gray')
  # plt.show()

# x_test = x_test.reshape(x_test.shape[0], 784)

def sigmoid(x):
  return (1/(1 + np.exp(-x)))

np.set_printoptions(suppress=True, threshold=sys.maxsize)

weights1 = model.layers[1].get_weights()[0]
biases1 = model.layers[1].get_weights()[1]

weights2 = model.layers[2].get_weights()[0]
biases2 = model.layers[2].get_weights()[1]

# weights3 = model.layers[3].get_weights()[0]
# biases3 = model.layers[3].get_weights()[1]


x_test = x_test.reshape(x_test.shape[0], 784)
# print(x_test.shape)

# ------------------------for python without keras ----------------------------

np.save('weights1.npy', weights1)
np.save('weights2.npy', weights2)
# np.save('weights3.npy', weights3)

np.save('biases1.npy', biases1)
np.save('biases2.npy', biases2)
# np.save('biases3.npy', biases3)


# ------------------------for Petalinux ----------------------------
# save 10000 digits images

# input_filenames = list()
# for i in range(10000):
#     input_filenames.append("x/" + "x" + str(i) + ".txt")

# for i in range(10000):
#   with open(input_filenames[i], 'w') as f:
#     for j in range(784):
#       f.write("%5.8f\n" % x_test[i][j])

with open('weights.txt', 'w') as f:
  for i in range(weights1.shape[1]):
    for j in range(weights1.shape[0]):
      f.write("%5.8f\n" % weights1[j,i])
#2nd layer weights
  for i in range(weights2.shape[1]):
    for j in range(weights2.shape[0]):
      f.write("%5.8f\n" % weights2[j,i])

with open('biases.txt', 'w') as f:
    for i in range(biases1.shape[0]):
        f.write("%5.8f\n" % biases1[i])
#2nd alyer biases
    for i in range(biases2.shape[0]):
        f.write("%5.8f\n" % biases2[i])

# # ---------------------for Vitis ------------------------------

with open('weights.h', 'w') as f:
  f.write("const float weights[12704] = { ")
  for i in range(weights1.shape[1]):
    for j in range(weights1.shape[0]):
      f.write("%5.8f, " % weights1[j,i])
    f.write("\n")
#2nd layer weights
  for i in range(weights2.shape[1]):
    for j in range(weights2.shape[0]):
      f.write("%5.8f, " % weights2[j,i])
    f.write("\n")
  f.write(" };")


#inputs for Vitis simulation run
with open('inputs.h', 'w') as f:
  f.write("const float X[7840] = { ")
  for i in range(10):
    for j in range(784):
      f.write("%5.8f, " % x_test[i][j])
    f.write("\n")
  f.write(" };")


with open('biases.h', 'w') as f:
    f.write("const float biases[26] = { ")
    for i in range(biases1.shape[0]):
        f.write("%5.8f, " % biases1[i])
    for i in range(biases2.shape[0]):
        f.write("%5.8f, " % biases2[i])
    f.write(" };")


# # ----------------------------for Vivado HLS ---------------------------

with open('../hls/simple_perceptron/hls_weights.h', 'w') as f:
  for i in range(weights1.shape[1]):
    for j in range(weights1.shape[0]):
      f.write("%5.8f, " % weights1[j,i])
    f.write("\n")
#2nd layer weights
  for i in range(weights2.shape[1]):
    for j in range(weights2.shape[0]):
      f.write("%5.8f, " % weights2[j,i])
    f.write("\n")


with open('../hls/simple_perceptron/hls_biases.h', 'w') as f:
    for i in range(biases1.shape[0]):
        f.write("%5.8f, " % biases1[i])
    for i in range(biases2.shape[0]):
        f.write("%5.8f, " % biases2[i])

#inputs for Vitis simulation run
with open('../hls/simple_perceptron/hls_input.h', 'w') as f:
    for j in range(784):
      f.write("%5.8f, " % x_test[0][j])

# # save results to file

results1layer = np.zeros(16)
results2layer = np.zeros(10)
results = np.zeros(100)

x_in = x_test

# print("1st layer output:")
# for i in range(16):
#     results1layer[i] = sigmoid(np.dot(x_in[0], weights1[:,i]) + biases1[i])
#     print("%5.8f" % results1layer[i])

# print("\n2nd layer output:")
# for i in range(10):
#     results2layer[i] = sigmoid(np.dot(results1layer, weights2[:,i]) + biases2[i])
#     print(i, "|", format(results2layer[i], '.8f'))

# print("My own prediction:", np.argmax(results2layer))


# with open('results.txt', 'w') as f:
#     for i in range(16):
#         f.write("%5.8f\n" % results1layer[i])
#     f.write("\n")
#     for i in range(10):
#         f.write("%s | %5.8f\n" % (i, results2layer[i]))


# # serialize model to JSON
# model_json = model.to_json()
# with open("model.json", "w") as json_file:
#     json_file.write(model_json)
# # serialize weights to HDF5
# model.save_weights("model.h5")
# print("Saved model to disk")

# test model on my own data
# predictions2 = model.predict(x_in)
# recognized_digit = np.argmax(predictions2)
# print("recognized digit: " + str(recognized_digit) + " with output = " + str(predictions2[recognized_digit]))


# print("\noutput for next 9 images:\n")
# for j in range(9):
#     print("x_test no.", j+1)
#     for i in range(16):
#         results1layer[i] = sigmoid(np.dot(x_test[j+1], weights1[:,i]) + biases1[i])
#     for i in range(10):
#         results2layer[i] = sigmoid(np.dot(results1layer, weights2[:,i]) + biases2[i])
#         results[j] = results2layer[i]
#         print(i, "|", format(results2layer[i], '.8f'))

# def softmax(x):
#   e_x = np.exp(x)
#   return e_x / e_x.sum()

# def relu(x):
#   return np.max([x, 0])

# def neuron1(x, image):
#   sum = 0
#   for j in range(784):
#     sum += x_in[image][j] * weights[0][j,x]
#   return relu(sum)

# def neural_net(image):
#   output = np.zeros(10)
#   layer1_output = np.zeros(128)#.astype('int8')

#   for j in range(128):
#     layer1_output[j] = neuron1(j, image)

#   for i in range(10):
#     sum = 0
#     for j in range(128):
#       sum += layer1_output[j] * weights[1][j,i]
#     output[i] = sum
#   print("My own prediction:", np.argmax(softmax(output)))
#   print("")

# print(x_test[0])
# print(x_in[0])
# # for i in range(10):
#   # print("Keras prediction: ", np.argmax(predictions[i]))
# neural_net(0)

# print(x_test[0])

  # plt.figure(1)
  # plt.imshow(x_draw[j], cmap='gray')
  # plt.show()
