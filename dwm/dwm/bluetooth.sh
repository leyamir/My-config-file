#!/bin/bash
sleep 3
if [[ $(bluetoothctl list) ]];
then
      xsetroot -name "bluetooth enable"	
else
      xsetroot -name "bluetooth disable"	
fi
sleep 2
xsetroot -name "$(dwm -v)"	

