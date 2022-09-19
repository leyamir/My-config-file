#!/bin/sh
/usr/bin/pipewire &
/usr/bin/pipewire-pulse &
/usr/bin/wireplumber &
nitrogen --restore
picom -b --experimental-backends &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

