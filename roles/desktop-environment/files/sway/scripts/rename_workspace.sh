#!/bin/bash 
set -e

name=$(swaymsg -t get_workspaces -r | jq '.[] | select(.focused==true) | .name')
num=$(     echo $name | sed 's/\"\(.*\)\:\(.*\)\"/\1/')
old_name=$(echo $name | sed 's/\"\(.*\)\:\(.*\)\"/\2/')

new_name=$(rofi -dmenu \
    -p "Rename workspace" \
    -font "JetBrains Mono NF 16" \
    -no-fixed-num-lines \
    -width 20 \
    -filter "$old_name")

# new_name=$(fuzzel --dmenu --lines 0 --prompt "Rename workspace: ")

swaymsg rename workspace to $num:$new_name