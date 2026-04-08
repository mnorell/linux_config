#!/bin/bash

STATE_FILE=".local/state/big_cursor_active"

if [ -f "$STATE_FILE" ]; then
    swaymsg seat seat0 xcursor_theme Adwaita 24
    rm "$STATE_FILE"
else
    swaymsg seat seat0 xcursor_theme Adwaita 64
    touch "$STATE_FILE"
fi
