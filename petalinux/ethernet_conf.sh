#!/bin/sh
ifconfig eth0 10.42.0.1 up

PID=$(ps -e|grep dropbear | grep -v grep|awk '{print $1}')
kill ${PID}
/usr/sbin/dropbear -r /etc/dropbear/dropbear_rsa_host_key -p 22
