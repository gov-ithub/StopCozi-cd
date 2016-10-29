#!/bin/bash
tmux-session-name='stopcozi-api'

cd ../StopCozi-api
git pull
tmux kill-session -t $tmux-session-name
tmux new -d -s $tmux-session-name
tmux send -t $tmux-session-name "mvn clean install" ENTER
tmux send -t $tmux-session-name "java -jar stopcozi.jar" ENTER
echo "Use 'tmux a -t $tmux-session-name' to check the status of the build/run process."
echo "Use Ctrl+B D to detach from the process."
