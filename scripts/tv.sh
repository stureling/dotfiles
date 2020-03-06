#!/bin/sh
xrandr --output DVI-D-0 --mode 1680x1050 --pos 1920x0 --rotate left --output HDMI-0 --mode 1920x1080 --pos 0x464 --rotate normal --output DP-0 --off --output DP-1 --off --output DP-2 --off --output DP-3 --off --output DP-4 --primary --mode 1920x1080 --pos 2970x0 --rotate normal --rate 144 --output DP-5 --off
~/.fehbg &
/home/eris/.config/polybar/launch.sh &
