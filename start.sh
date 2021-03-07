#!/bin/bash

DreamDaemon $* &
PID=$!

trap "kill -SIGTERM $PID" SIGINT

while kill -0 $PID > /dev/null 2>&1
do
  wait $PID
done
