#!/bin/bash

# Inspired by https://github.com/lvancrayelynghe/dotfiles/blob/master/sxhkd/rofi-system-menu.sh

confirm() {
    echo -e "Yes\nNo" | rofi -dmenu -i -format d -selected-row 1 -p "${1:-Confirm: }"  -font "JetBrains Mono NF 24" -width 10 -lines 2
}

fixmonitor="Fix monitor layout"
reload="Reload sxhkd configuration"
restartpan="Restart polybar"
quit="Logout"
reboot="Reboot"
shutdown="Shutdown"


content="$fixmonitor\n$reload\n$restartpan\n$quit\n$reboot\n$shutdown"

selection=$(echo -e $content | rofi -dmenu -i -markup-rows -p "Action: " -font "JetBrains Mono NF 24" -width 10 -lines 5)
case $selection in
    $fixmonitor)
        bash ~/.config/bspwm/fix-multi-monitor.sh ;;
    $reload)
        pkill -USR1 -x sxhkd ;;
    $restartpan)
        pkill polybar && polybar bar1 && polybar bar2 && polybar bar3 ;;
    $quit)
        [[ $(confirm $quit) = 1 ]] && (bspc quit) ;;
    $reboot)
        [[ $(confirm $reboot) = 1 ]] && (systemctl reboot -i) ;;
    $shutdown)
        [[ $(confirm $shutdown) = 1 ]] && (systemctl poweroff -i) ;;
esac

