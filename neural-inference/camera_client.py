import socket
import cv2
import struct
import pickle

cv2.namedWindow('stream from Z-Turn camera',cv2.WINDOW_NORMAL)
cv2.resizeWindow('stream from Z-Turn camera', 640,480)

# Filename 
filename = 'savedImage3.jpg'

client_socket = socket.socket(socket.AF_INET,socket.SOCK_STREAM)
host_ip = '10.42.0.1'
port = 8080
client_socket.connect((host_ip,port))
data = b""
payload_size = struct.calcsize("Q")

while True:

	while len(data) < payload_size:
		packet = client_socket.recv(4*1024)
		if not packet: break
		data+=packet
	packed_msg_size = data[:payload_size]
	data = data[payload_size:]
	msg_size = struct.unpack("Q",packed_msg_size)[0]
	
	while len(data) < msg_size:
		data += client_socket.recv(4*1024)
	frame_data = data[:msg_size]
	data  = data[msg_size:]
	frame = pickle.loads(frame_data)
	cv2.imshow('stream from Z-Turn camera',frame)
	
	key = cv2.waitKey(1) & 0xFF
	if key == 27: # ESC pressed
		break
	if key == 32:
		# Space pressed
		print("Space hit, saving a frame")
		cv2.imwrite(filename, frame)



client_socket.close()