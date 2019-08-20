#!/bin/bash

source "$HOME"/.bash_aliases &&
tmux new-session -ds 1 &&
tmux new-session -ds 2 &&
tmux new-session -ds 3 &&
tmux new-session -ds 4 &&
tmux new-session -ds 5 &&
tmux new-session -ds 6 &&
tmux new-session -ds 7 &&
tmux new-session -ds 8 &&
tmux new-session -ds 9 &&
tmux new-session -ds 0 &&
tmux new-session -ds ranger &&
tmux send-keys -t ranger "clear && ranger" ENTER &&
tmux attach -t 0 &>/dev/null || tmux switch-client -t 0 &&
st -e tmux attach -t 0 || ~/scripts/cline_scripts/ses-i3

# vim: ft=tmux nowrap
