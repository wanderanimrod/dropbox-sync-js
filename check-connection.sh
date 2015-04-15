#!/bin/bash
INTERFACE='wlan0'
IP='192.168.1.4'

ping -c 1 -I $INTERFACE $IP > /dev/null 2> /dev/null
if [ $? -ge 1 ] ; then
	echo `date` " | Network connection down! Attempting to reconnect ..."
	ifdown $INTERFACE
	sleep 5
	ifup --force $INTERFACE
else
	echo `date` " | Network is okay"
fi