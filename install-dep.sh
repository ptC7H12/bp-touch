#!/bin/bash

apt-get update
apt-get upgrade
apt-get build-dep xbmc
apt-get install swig default-jre libgtk2.0-bin libssh-4 libssh-dev
echo -e "\nA10HWR=1" >> /etc/environment

if [ -f /swap ]
	then
		echo "SWAP ist schon vorhanden!"
	else
		dd if=/dev/zero of=/swap bs=1M count=384
		mkswap -c /swap
		
fi

if grep "/swap" /proc/swaps; then
	#echo "$?"
	echo "Swapfile is allready mounted"
else
	#echo "$?"
	echo "No swapfile found"
	swapon /swap
fi
