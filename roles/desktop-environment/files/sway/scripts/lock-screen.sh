#!/bin/bash

grim /tmp/screen.png 
ffmpeg -y -i /tmp/screen.png -vf "gblur=sigma=100, vignette=PI/5" -c:a copy /tmp/screen-out.png 
rm /tmp/screen.png 
swaylock --image /tmp/screen-out.png --daemonize
