#!/bin/bash
#if ! command -v tmux &> /dev/null; then
#    echo "tmux is not installed. Please install tmux before using this script."
#    exit 1
#fi

read -p "name session: " session_name

tmux new -s "$session_name" -c /bin/bash bash

tmux attach -t "$session_name"

