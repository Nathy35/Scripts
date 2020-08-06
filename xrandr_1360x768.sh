#!/bin/bash
#[ "$XDG_SESSION_TYPE" = x11 ] || exit 0

#xrandr --output eDP-1 --primary --mode 1920x1080 --pos 0x1080 --rotate normal --output HDMI-1 --mode 1360x768 --pos 0x0 --rotate normal

CURRENT_PROFILE=$(pacmd list-cards | grep "active profile" | cut -d ' ' -f 3-)

if [ "$CURRENT_PROFILE" = "<output:hdmi-stereo>" ]; then
        pacmd set-card-profile 0 "output:analog-stereo+input:analog-stereo"
        disper -s
else
        pacmd set-card-profile 0 "output:hdmi-stereo"
        disper -S
fi
