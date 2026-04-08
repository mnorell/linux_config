#!/bin/bash 
set -e

name=$(swaymsg -t get_workspaces -r | jq '.[] | select(.focused==true) | .name')
num=$(     echo $name | sed 's/\"\(.*\)\:\(.*\)\"/\1/')
old_name=$(echo $name | sed 's/\"\(.*\)\:\(.*\)\"/\2/')

new_name=$(fuzzel --dmenu --width 60 --prompt-only "Rename workspace:" --search "$old_name")

# Make the workspace switching work after rename
id='$ws'$num
cmd="set \"$id\" $num:$new_name"
swaymsg $cmd

swaymsg rename workspace to $num:$new_name
