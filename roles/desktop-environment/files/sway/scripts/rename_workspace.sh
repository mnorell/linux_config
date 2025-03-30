#!/bin/bash 
set -e

name=$(swaymsg -t get_workspaces -r | jq '.[] | select(.focused==true) | .name')
num=$(     echo $name | sed 's/\"\(.*\)\:\(.*\)\"/\1/')
old_name=$(echo $name | sed 's/\"\(.*\)\:\(.*\)\"/\2/')

new_name=$(rofi -dmenu \
    -p "Rename workspace" \
    -font "JetBrains Mono NF 18" \
    -fixed-num-lines 1 \
    -width 20 \
    -filter "$old_name")

swaymsg rename workspace to $num:$new_name