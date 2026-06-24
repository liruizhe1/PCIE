#!/bin/bash
################################################################################
#			clean files
################################################################################
echo "Clean aic8800 wifi driver setup files!"
echo "Authentication requested [root] for clean:"
if [ "`uname -r |grep fc`" == " " ]; then
	  sudo su -c "rm -rf /lib/firmware/aic8800D80/"; Error=$?
else
	  su -c "rm -rf /lib/firmware/aic8800D80/"; Error=$?
fi

echo "The Uninstall Setup Script is completed!"
