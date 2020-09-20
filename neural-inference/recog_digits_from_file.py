import cv2
import numpy as np
import matplotlib.pyplot as plt
import os

# cv2.namedWindow('im',cv2.WINDOW_NORMAL)
# cv2.resizeWindow('im', 1280,960)

img = cv2.imread('digits.png')

img_gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
blurred = cv2.GaussianBlur(img_gray, (11, 11), 0)
# blurred = cv2.medianBlur(img_gray, 7)

thresh = cv2.adaptiveThreshold(blurred,255,cv2.ADAPTIVE_THRESH_GAUSSIAN_C, cv2.THRESH_BINARY_INV,11,2)
# ret, thresh = cv2.threshold(blurred, 0, 255, cv2.THRESH_BINARY_INV)

_, contours,hierarchy = cv2.findContours(thresh, cv2.RETR_TREE, cv2.CHAIN_APPROX_SIMPLE)

x_test = [] # array to store cropped digits
recognized_digits = [] # list to store recognized digits
for i,cnt in enumerate(contours):

    x,y,w,h = cv2.boundingRect(cnt)
    
    if(h > 20 and h<200 and w > 20 and w < 200 and hierarchy[0][i][3] == -1):
        cv2.rectangle(img,(x,y),(x+w,y+h),(0,255,0),2)
        #cropping each image and process
        roi_digit = thresh[y:y+h, x:x+w]

        digit_height = ((24 * roi_digit.shape[1]) / roi_digit.shape[0]) # calculate width with the same dim ratio
        even_digit_height = int(np.ceil(digit_height / 2.) * 2) # round up to the nearest even number 
        digit_dim = (even_digit_height, 24) # the size of the mlp input
    
        resized = cv2.resize(roi_digit, digit_dim, interpolation = cv2.INTER_AREA)
        side_pad = ((28 - resized.shape[1])/2)
        padded = np.pad(resized, ((2, 2), (side_pad, side_pad)), mode='constant', constant_values=0)
        
        x_test.append(padded)

        x_0 = padded.astype('float32')
        x_0 /= 255
        x_0 = x_0.reshape(784)

        # save to file all detected and cropped digits
        # for i in range(len(x_0)):
        im = 0
        with open("x/" + "x" + str(im) + ".txt", 'w') as f:
            for j in range(784):
                f.write("%5.8f\n" % x_0[j])

        os.system('python3 keras_digitrecognition.py > out.txt')

        with open("out.txt", 'r') as f:
            digit = f.read(1)
            if not digit:
                print("out.txt file empty")
        print("Recognized digit: " + str(digit))
        f.close()

        recognized_digits.append(digit)
        cv2.putText(img, digit, (x, y-10), cv2.FONT_HERSHEY_SIMPLEX, 0.9, (0,255,0), 2)

x_draw = x_test

x_test = np.array(x_test)
x_test = x_test.astype('float32')
x_test /= 255
x_test = x_test.reshape(x_test.shape[0], 784)

# save to file all detected and cropped digits
for im in range(len(x_test)):
    with open("x/" + "x" + str(im) + ".txt", 'w') as f:
        for j in range(784):
            f.write("%5.8f\n" % x_test[im][j])

num = 10
num_row = 2
num_col = 5# plot images
fig, axes = plt.subplots(num_row, num_col, figsize=(1.5*num_col,2*num_row))
for i in range(num):
    ax = axes[i//num_col, i%num_col]
    ax.imshow(x_draw[i], cmap='gray')
    ax.set_title('Recognized: {}'.format(recognized_digits[i]))
plt.tight_layout()
plt.show()
cv2.imshow('stream from Z-Turn camera', img)   
print("Number of detected contours: " + str(len(contours)))

cv2.waitKey(0)
cv2.destroyAllWindows()

