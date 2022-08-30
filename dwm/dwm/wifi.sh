#!/bin/bash

sleep 3
xsetroot -name "wifi $(nmcli radio wifi)"
sleep 2
xsetroot -name "$(dwm -v)"
