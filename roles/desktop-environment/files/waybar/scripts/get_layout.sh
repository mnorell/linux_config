#!/bin/bash

cherry_id="1130:17:HID_046a:0011"
dell_id="1:1:AT_Translated_Set_2_keyboard"

us_gb_layout_name="alt for swedish"
se_layout_name="Swedish"


main () {
    cherry_layout=$(get_layout $cherry_id)
    dell_layout=$(swaymsg -t get_inputs | jq -r --arg id "$dell_id" '.[] | select(.identifier == $id) | .xkb_active_layout_name')

    if [[ "$dell_layout" == "$us_gb_layout_name"* ]]; then
        if [[ "$cherry_layout" == "$us_gb_layout_name"* ]]; then
            echo gb,us
        elif [[ "$cherry_layout" == "$se_layout_name"* ]]; then
            echo gb,se
        else
            echo gb
        fi
    else
        if [[ "$cherry_layout" == "$us_gb_layout_name"* ]]; then
            echo se,us
        elif [[ "$cherry_layout" == "$se_layout_name"* ]]; then
            echo se,se
        else
            echo se
        fi
    fi
}

get_layout() {
    swaymsg -t get_inputs | jq -r --arg id "$1" '.[] | select(.identifier == $id) | .xkb_active_layout_name'
}

main
