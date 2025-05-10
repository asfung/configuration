#!/usr/bin/env bash

tmux attach -t $1

if [[ -z $1 ]];  then 
    exit 0
fi

