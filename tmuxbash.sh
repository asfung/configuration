#!/bin/bash
read -p "session name: " session_name
tmux new -s "$session_name" -c /bin/bash bash
tmux attach -t "$session_name"
