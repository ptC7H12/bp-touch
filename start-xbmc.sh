#!/bin/bash

modprobe disp
modprobe lcd
modprobe hdmi
modprobe mali
export A10HWR=1

/allwinner/xbmc-pvr-bin/lib/xbmc/xbmc.bin