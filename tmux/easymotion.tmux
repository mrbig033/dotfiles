#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
# tmux bind-key j run-shell -b "ruby $CURRENT_DIR/scripts/easymotion.rb"
tmux bind-key -n M-ç run-shell -b "ruby $CURRENT_DIR/scripts/easymotion.rb"
