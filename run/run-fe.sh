#!/bin/bash
tmux-session-name='stopcozi-web'

cd ../StopCozi-web
git pull
# npm install and some js voodoo to be added here
tmux kill-session -t $tmux-session-name
tmux new -d -s $tmux-session-name
tmux send -t $tmux-session-name "node index.js" ENTER
echo "Use 'tmux a -t $tmux-session-name' to check the status of the build/run process."
echo "Use 'Ctrl+B D' to detach from the process."
