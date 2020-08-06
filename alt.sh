#!/bin/bash
if [[ $(xrandr --verbose | sed -n '/ connected primary/p' | sed 's/ connected.*//') = "eDP-1-1" ]]
then
xrandr --output HDMI-1-1 --primary
else
xrandr --output eDP-1-1 --primary
fi
