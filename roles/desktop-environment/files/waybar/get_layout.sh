#!/bin/bash

swaymsg -t get_inputs | grep '"xkb_active_layout_name": "Shift for numbers' >/dev/null
if [ $? -eq 1 ]; then
    echo gb
    exit 0
fi

swaymsg -t get_inputs | grep '"xkb_active_layout_name": "Swedish' >/dev/null
if [ $? -eq 1 ]; then
    echo se
    exit 0
fi
