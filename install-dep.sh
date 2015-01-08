#!/bin/bash

apt-get update
apt-get upgrade
apt-get build-dep xbmc
apt-get install swig default-jre libgtk2.0-bin libssh-4 libssh-dev
echo -e "\nA10HWR=1" >> /etc/environment
dd if=/dev/zero of=/swap bs=1M count=384
mkswap -c /swap
swapon /swap