#!/bin/bash

tmux attach-session -t $USER || tmux new-session -s $USER
exit 0
