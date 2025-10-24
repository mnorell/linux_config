#!/bin/bash

swaymsg -t get_inputs | grep '"xkb_active_layout_name": alt for swedish' >/dev/null
if [ $? -eq 0 ]; then
    echo gb
    exit 0
fi

swaymsg -t get_inputs | grep '"xkb_active_layout_name": "Swedish' >/dev/null
if [ $? -eq 0 ]; then
    echo se
    exit 0
fi
