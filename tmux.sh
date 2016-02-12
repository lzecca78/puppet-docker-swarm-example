#!/bin/sh

tmux start-server
tmux new-session -d -s Onebip -n code
tmux new-window -tOnebip:0 -n code
tmux split-window -tOnebip:0 -p 50 -h
tmux new-window -tOnebip:1 -n beaker
tmux new-window -tOnebip:2 -n ssh

tmux send-keys -tOnebip:0 'cd ~/projects/Onebip/provisioning2; clear' C-m
tmux send-keys -tOnebip:1 'cd ~/project/Onebip/provisioning2/manifests/.vagrant/beaker_vagrant_files; clear' C-m
tmux send-keys -tOnebip:2 'cd ~/projects/Onebip/provisioning2/manifests/.vagrant/beaker_vagrant_files; clear' C-m

tmux select-window -tOnebip:0
tmux attach-session -d -tOnebip
