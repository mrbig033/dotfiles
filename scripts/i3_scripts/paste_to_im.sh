#!/bin/bash

i3-msg "[class='Emacs']" focus
i3-msg "[con_mark=_last]" focus
xdotool key --clearmodifiers --delay 24 Ctrl+a Delete Ctrl+v Ctrl+Return Return
