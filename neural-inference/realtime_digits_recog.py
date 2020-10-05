import cv2
import matplotlib.pyplot as plt
import numpy as np
import os

def sigmoid(x):
  return (1/(1 + np.exp(-x)))

def softmax(x):
  e_x = np.exp(x)
  return e_x / e_x.sum()

# load weights and biases from a model pretrained in keras
weights1 = np.load('weights1.npy')
weights2 = np.load('weights2.npy')
weights3 = np.load('weights3.npy')
biases1 = np.load('biases1.npy')
biases2 = np.load('biases2.npy')
biases3 = np.load('biases3.npy')

cam = cv2.VideoCapture(2)
img_width = 640
img_height = 480
cam.set(3, img_width)
cam.set(4, img_height)

max_dim_ratio = 2.0 # it is the maximum difference between heigth and width of the digit to be detected ( (w/h) <= max_dim_diff )
min_dim_ratio = 0.3
max_digits = 10 # the maximum number of digits that can be found at each frame
crop_padding_top = 4
num_row = 2 # output plot size
num_col = 5

cv2.namedWindow('stream from Z-Turn camera',cv2.WINDOW_NORMAL)
cv2.resizeWindow('stream from Z-Turn camera', 640,480)

while True:
    ret, img = cam.read()
    if not ret:
        print("failed to grab frame")
        break

    img_gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
    # blurred = cv2.medianBlur(img_gray, 7)
    blurred = cv2.GaussianBlur(img_gray, (11, 11), 0)
    thresh = cv2.adaptiveThreshold(blurred,255,cv2.ADAPTIVE_THRESH_GAUSSIAN_C, cv2.THRESH_BINARY_INV,11,2)
    _, contours,hierarchy = cv2.findContours(thresh, cv2.RETR_TREE, cv2.CHAIN_APPROX_SIMPLE)

    x_test = [] # array to store cropped digits 
    recognized_digits = [] # list to store recognized digits
    outputs = [] # for neural network output (accuracy)
    found_digits = 0

    for i,cnt in enumerate(contours):

        x,y,w,h = cv2.boundingRect(cnt)
        if(found_digits <= max_digits and h > 40 and h<200 and w > 10 and w < 200 and min_dim_ratio <= (w/float(h)) <= max_dim_ratio and hierarchy[0][i][3] == -1):
            found_digits +=1
            cv2.rectangle(img,(x,y),(x+w,y+h),(0,255,0),2)
            #cropping each image and process
            roi_digit = thresh[y:y+h, x:x+w]
            # scale and add padding
            digit_width = (((28-2*crop_padding_top) * roi_digit.shape[1]) / roi_digit.shape[0]) # calculate width with the same dim ratio
            even_digit_width = int(np.ceil(digit_width / 2.) * 2) # round up to the nearest even number 
            if (even_digit_width < 4 or even_digit_width > 26):
                # print("wrong cropped digit size")
                continue
            digit_dim = (even_digit_width, (28-2*crop_padding_top)) # the size of the mlp input
            resized = cv2.resize(roi_digit, digit_dim, interpolation = cv2.INTER_AREA)
            side_pad = int((28 - resized.shape[1])/2)
            if side_pad <= 0: side_pad = 1 # padding can't be negative

            padded = np.pad(resized, ((crop_padding_top, crop_padding_top), (side_pad, side_pad)), mode='constant', constant_values=0)

            x_test.append(padded)

            x_0 = padded.astype('float32')
            x_0 /= 255
            x_0 = x_0.reshape(784)

            results1layer = np.zeros(64)
            results2layer = np.zeros(16)
            results3layer = np.zeros(10)
            results = np.zeros(100)

            # print("1st layer output:")
            # for i in range(16):
            results1layer = sigmoid(np.dot(x_0, weights1) + biases1)
                # print("%5.8f" % results1layer[i])

            # print("\n2nd layer output:")
            results2layer = sigmoid(np.dot(results1layer, weights2) + biases2)
            # for i in range(10):
            #     print(i, "|", format(results2layer[i], '.8f'))

            # print("\n3nd layer output:")
            results3layer = softmax(np.dot(results2layer, weights3) + biases3)
            for i in range(10):
                print(i, "|", format(results3layer[i], '.8f'))


            digit = np.argmax(results3layer)
            print("Recognized digit: " + str(digit)+ " with output: " + str(results3layer[digit]))

            recognized_digits.append(digit)
            outputs.append(results2layer[digit])
            # cv2.putText(img, str(digit) + "({:.2f})".format(results2layer[digit]), (x, y-10), cv2.FONT_HERSHEY_SIMPLEX, 0.6, (0,255,0), 1)
            cv2.putText(img, str(digit), (x, y-10), cv2.FONT_HERSHEY_SIMPLEX, 0.6, (0,255,0), 1)
            cv2.imshow('stream from Z-Turn camera', img)  

    # cv2.putText(img, "FPS: {:.2f}".format(fps), (10, 30), cv2.FONT_HERSHEY_SIMPLEX, 0.9, (0,255,0), 1)
    # cv2.imshow('stream from Z-Turn camera', img)   
    # print("Contours found (including FP) : " + str(len(contours)))
    
    k = cv2.waitKey(1)
    if k%256 == 32:
        # Space pressed
        print("Space hit, plotting output")
        fig, axes = plt.subplots(num_row, num_col, figsize=(1.5*num_col,2*num_row))
        for i in range(len(x_test)):
            ax = axes[i//num_col, i%num_col]
            ax.imshow(x_test[i], cmap='gray')
            # ax.set_title("{}({:.2f})".format(recognized_digits[i], outputs[i]))
            ax.set_title("{}".format(recognized_digits[i]))
        plt.tight_layout()
        # save image
        cv2.imwrite('2hid-layer-img.png', img)
        plt.show()

    if k%256 == 27:
        # ESC pressed
        print("Escape hit, closing...")
        break


cam.release()
cv2.destroyAllWindows()