#!/bin/bash

i3-msg [class="Emacs'] focus
i3-msg [class='Hexchat'] scratchpad show
xdotool key --clearmodifiers Shift+Insert
