#!/bin/bash

echo "Ordner und Dateien erstellen"
mkdir /touch
chmod 777 /touch -R
touch /touch/touchscreen_axis_calib
chmod 777 /touch/touchscreen_axis_calib
echo "calib_x_d=-21;calib_x_fact=0.658097686;calib_y_d=-50;calib_y_fact=0.408626561;swap_axes=0;click_confines=15" > /touch/touchscreen_axis_calib


echo "Programmpaket patch installieren!"
apt-get install patch


echo "/xbmc/input/linux/LinuxInputDevices.cpp wird gepatcht!"
patch -p1 < xbmc-bp-patch1.patch

echo "/xbmc/input/MouseStat.cpp wird gepatcht!"
patch -p1 < xbmc-bp-patch2.patch

echo "xbmc/interfaces/legacy/ModuleXbmcgui.cpp wird gepatcht!"
patch -p1 < xbmc-bp-patch3.patch

echo "/xbmc/input/MouseStat.h wird gepatcht!"
patch -p1 < xbmc-bp-patch4.patch

echo "/xbmc/interfaces/legacy/ModuleXbmcgui.h wird gepatcht!"
patch -p1 < xbmc-bp-patch5.patch
