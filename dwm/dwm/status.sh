#!/bin/bash
xsetroot -name "BAT $(cat /sys/class/power_supply/BAT0/capacity)% | $(date +'%a, %I:%M%P')"
sleep 5
xsetroot -name "$(dwm -v)"
