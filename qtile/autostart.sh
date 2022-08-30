#!/bin/sh
/usr/bin/pipewire &
/usr/bin/pipewire-pulse &
/usr/bin/wireplumber &
nitrogen --restore                                                                                                           
picom -b --experimental-backends 
bluetoothctl power off

