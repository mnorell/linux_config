#!/bin/bash

if pgrep -x "wl-mirror" > /dev/null 
then
    killall wl-mirror
else
    wl-present mirror DP-1 --fullscreen --fullscreen-output eDP-1 &
fi