#!/bin/bash

echo "##################################################"
echo "AIC Wi-Fi driver Setup Files script"
echo "2023.03.09 v1.1.0"
echo "##################################################"

Main_version=`uname -r |awk -F'.' '{print $1}'`
Minor_version=`uname -r |awk -F'.' '{print $2}'`

echo "Authentication requested [root] for setup:"
if [ "`uname -r |grep fc`" == " " ]; then
	sudo su -c "cp -rf ./fw/aic8800D80 /lib/firmware/"; Error=$?
else
	su -c "cp -rf ./fw/aic8800D80 /lib/firmware/"; Error=$?
fi

echo "##################################################"
echo "The Setup Script is completed !"
echo "##################################################"
