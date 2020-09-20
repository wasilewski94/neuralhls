import socket
import cv2
import struct
import pickle
import numpy as np
import os
from time import sleep

server_socket = socket.socket(socket.AF_INET,socket.SOCK_STREAM)
port = 8080
socket_address = ('10.42.0.1',port)
server_socket.bind(socket_address)

server_socket.listen(5)
print("LISTENING AT:",socket_address)

client_socket,addr = server_socket.accept()
print('GOT CONNECTION FROM:',addr)
cam = cv2.VideoCapture(0)
img_width = 320
img_height = 240
cam.set(3, img_width)
cam.set(4, img_height)

max_dim_ratio = 2.0 # it is the maximum difference between heigth and width of the digit to be detected ( (w/h) <= max_dim_diff )
min_dim_ratio = 0.3
max_digits = 3 # the maximum number of digits that can be found at each frame
crop_padding_top = 4

try:
    if client_socket:
        while(cam.isOpened()):
            ret,img = cam.read()
            
            img_gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
            # blurred = cv2.medianBlur(img_gray, 3)
            blurred = cv2.GaussianBlur(img_gray, (5, 5), 0)
            thresh = cv2.adaptiveThreshold(blurred,255,cv2.ADAPTIVE_THRESH_GAUSSIAN_C, cv2.THRESH_BINARY_INV,11,2)
            _, contours,hierarchy = cv2.findContours(thresh, cv2.RETR_TREE, cv2.CHAIN_APPROX_SIMPLE)

            x_test = [] # array to store cropped digits 
            recognized_digits = [] # list to store recognized digits
            found_digits = 0

            for i,cnt in enumerate(contours):
                x,y,w,h = cv2.boundingRect(cnt)
                if(found_digits < max_digits and h > 20 and h<200 and w > 10 and w < 200 and min_dim_ratio <= (w/float(h)) <= max_dim_ratio and hierarchy[0][i][3] == -1):
                    cv2.rectangle(img,(x,y),(x+w,y+h),(0,255,0),1)
                    #cropping each image and process
                    roi_digit = thresh[y:y+h, x:x+w]
                    # scale and add padding
                    digit_width = (((28-2*crop_padding_top) * roi_digit.shape[1]) / roi_digit.shape[0]) # calculate width with the same dim ratio
                    even_digit_width = int(np.ceil(digit_width / 2.) * 2) # round up to the nearest even number 
                    if (even_digit_width < 4 or even_digit_width > 26):
                        print("wrong cropped digit size")
                        continue
                    digit_dim = (even_digit_width, (28-2*crop_padding_top)) # the size of the mlp input
                    resized = cv2.resize(roi_digit, digit_dim, interpolation = cv2.INTER_AREA)
                    side_pad = int((28 - resized.shape[1])/2)
                    if side_pad <= 0: side_pad = 1 # padding can't be negative
                    x_test = np.pad(resized, ((crop_padding_top, crop_padding_top), (side_pad, side_pad)), mode='constant', constant_values=0)
                    x_test = np.array(x_test)
                    x_test = x_test.astype('float32')
                    x_test /= 255
                    x_test = x_test.reshape(784)
                    found_digits +=1

                    with open("input.txt", 'w') as f:
                        for j in range(784):
                            f.write("%5.8f\n" % x_test[j])

                    # os.system("digitrecognition > out.txt")
                    f.close()
                    recognized_digits = 0
                    sleep(0.01) #wait for the output
                    with open("out.txt", 'r') as f:
                        recognized_digit = f.read(1)
                        if recognized_digit == "":
                            print("out.txt file empty")

                    # print("Recognized digit:", recognized_digit)
                    f.close()

                    cv2.putText(img, recognized_digit, (x, y-4), cv2.FONT_HERSHEY_SIMPLEX, 0.6, (0,255,0), 1)
                    # x_test.append(padded)

            # x_test = np.array(x_test)
            # x_test = x_test.astype('float32')
            # x_test /= 255
            # x_test = x_test.reshape(x_test.shape[0], 784)
            # # print("Saving " + str(len(x_test)) + " digits")
            # for i in range(len(x_test)):
            #     with open("x/" + "x" + str(i) + ".txt", 'w') as f:
            #         for j in range(784):
            #             f.write("%5.8f\n" % x_test[i][j])
            
            # print("All " + str(len(x_test)) + " digits successfully saved, lets try to recognize them!")
            
            # print("Recognized digit: " + str(recognized_digit))
            
            # print("Contours found (including FP) : " + str(len(contours)))
            # send low resolution image to keep higher fps
            img_lq = cv2.resize(img, (160,120), interpolation = cv2.INTER_AREA)
            a = pickle.dumps(img_lq, protocol=2) #client use python2 so I need pickle protocol=2
            message = struct.pack("Q",len(a))+a
            client_socket.sendall(message)

except:
    print("Application stopped")
    client_socket.close()
    cam.release()				
finally:
    print("Exiting")
    client_socket.close()
    cam.release()				
