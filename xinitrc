#!/bin/bash
# ø
# Place this file in the following location:
# $HOME/.xinitrc

# Disable bell
xset -b

# Disable all Power Saving Stuff
xset -dpms
xset s off

# X Root window color
xsetroot -solid darkgrey

# Merge resources (optional)
#xrdb -merge $HOME/.Xresources

# Caps to Ctrl, no caps
setxkbmap -layout us -option ctrl:nocaps

# Background Image (optional)
# feh --bg-scale ~/Desktop/bg2.jpg

# Launch a terminal session
# urxvt -e tmux &
urxvt -fn "xft:FiraCode Nerd Font-16:style=Medium" -e tmux &
emacs &

# Connect to a synergy server (set IP address)
SRV="192.168.1.0"
if ping -c 1 $SRV &> /dev/null
then
    synergyc $SRV &
else
    echo "No synergy server detected at $SRV"
fi

# zoom anotate
xcompmgr -c 10 -t0 -r0 -o.00 &

# Launch awesome
exec awesome
