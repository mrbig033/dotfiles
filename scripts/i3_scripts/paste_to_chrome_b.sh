#!/bin/bash

i3-msg [class='Emacs'] focus
i3-msg [class='Google-chrome'] focus
xdotool key --clearmodifiers --delay 24 Ctrl+a Delete Ctrl+v
