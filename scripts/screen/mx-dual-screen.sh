#!/usr/bin/env bash

xrandr --output DP-1 --off --output HDMI-1 --mode 1920x1080 --pos 0x0 --rotate normal --output eDP-1 --primary --mode 1366x768 --pos 1920x0 --rotate normal --output HDMI-2 --off
pkill compton
compton -b --backend glx &>/dev/null
feh --recursive --randomize --bg-fill ~/Pictures/Wallpaper
sleep 1
pactl set-card-profile 0 output:hdmi-stereo
