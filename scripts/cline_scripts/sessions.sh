#!/bin/bash

source "$HOME"/.bash_aliases
tmux new-session -ds 1
tmux new-session -ds 2
tmux new-session -ds 3
tmux new-session -ds 4
tmux new-session -ds 5
tmux new-session -ds 6
tmux new-session -ds 7
tmux new-session -ds 8
tmux new-session -ds 9
tmux new-session -ds 0
# tmux switch-client -t ranger &>/dev/null || tmux -L ranger
# notify-send --expire-time=250 'tmux reloaded'
i3-msg "[title=term-up]" scratchpad show
# vim: ft=tmux nowrap
