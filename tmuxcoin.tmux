#!/bin/sh

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
tmux bind-key T run-shell "$CURRENT_DIR/scripts/tmuxcoin.sh"
