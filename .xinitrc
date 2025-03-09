#!/bin/bash

# Services
exec mpd &
(sleep 5 && systemctl --user start mpdas) &
(sleep 5 && arrpc) &

# Display settings
setterm -blank 0 -powerdown 0 # disable screen blanking and powerdown
xset -dpms # turn off DPMS
xset s off # turn off screensaver
xrandr --output DVI-D-0 --auto --output HDMI-0 --off # map output monitors
feh --bg-fill '/usr/share/wallpapers/1625674304426.jpg' # wallpapers
# TODO bluelight filter

# Audio
playSound() {
	ffplay -nodisp -autoexit "$1"
}

playSound '/usr/share/sounds/boot.flac' & # boot
trap 'playSound "/usr/share/sounds/shutdown.flac"' EXIT # shutdown

# Window manager
exec dwmblocks &
(sleep 5 && pkill -RTMIN+2 dwmblocks) & # update audio level after dwm has booted

exec dwm
