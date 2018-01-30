#!/bin/sh

PROCESS_PID=$(pidof $PROCESS_NAME)
echo $PROCESS_ID
echo $PROCESS_TRACE
strace -f -p $PROCESS_PID -s 100000 -y -e trace=$PROCESS_TRACE
