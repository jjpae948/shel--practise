#!/bin/bash

##### special vars #####
echo "All variables paased to sprit: $@"
echo "Number of variables passed:$#"
echo "First variable:$1"
echo "Script name:$0"
echo "Who is running this: $USER"
echo "Which directory: $PWD"
echo "Home directory: $HOME"
echo "PID of the current script: $$"
sleep 5 &
echo "PID of the background command running just now: $!"
Wait $!
echo "Line number: $LINENO"
echo "Script ecxuted in: $SECONDS seconds"
echo "Random number: $RANDOM"
echo "Exit status of last command: $?"