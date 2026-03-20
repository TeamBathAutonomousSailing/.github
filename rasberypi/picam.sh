#!/bin/bash
trap 'kill $PID; exit' INT TERM

while true; do
    rpicam-vid -t 600000 --nopreview --framerate 25 -o "$(date +%Y%m%d_%H%M%S).h264" &
    PID=$!
    wait $PID
done
