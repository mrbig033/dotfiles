#!/bin/bash

setxkbmap -option -layout br
xmodmap /home/jerry/dotfiles/scripts/keyboard/xmodmaps
pkill -fi xcape
xcape -t 200 -e 'Control_L=Escape'
xcape -t 200 -e 'Alt_L=Tab'
xset r rate 200 60
