#!/bin/bash -e

function configureMonitors() {

    # Find all connected monitors
    monitors=( $(xrandr -q | grep " connected" | awk '{print $1}' | sort -r) )
    monitor_count=${#monitors[@]}

    if [ $monitor_count = "1" ]; then
        echo "One monitor connected"
        xrandr --auto

    elif [ $monitor_count = "2" ]; then
        echo "Two monitors connected, left: ${monitors[0]}, right: ${monitors[1]}"
        #xrandr --output ${monitors[1]} --mode 1920x1080 --scale 2x2 --right-of eDP1
        xrandr --output ${monitors[1]} --mode 3840x2160 --pos 3840x-2160 --scale 2x2 --auto
        #--left-of eDP1 
        #--output --pos 7680x0

    else
        echo "ERROR too many connected monitors: $monitor_count"
    fi

    echo ""
    echo "Full output from xrandr"
    xrandr -q
    echo ""

}

function fixDesktops() {

    # Find all active monitors
    monitors=( $(xrandr -q | grep " connected" | grep -v "connected (" | awk '{print $1}' | sort -r) )
    monitor_count=${#monitors[@]}

    # (IFS, handle bash array splitting)
    OLDIFS=$IFS
    IFS=$'\n'
    desktops=( $(bspc query -D --names | sort | grep -v Desktop) )
    IFS=$OLDIFS
    

    # Make sure all monitors have a default desktop before we start moving 
    # others around (can't move last desktop from a monitor).
    bspwm_monitors=( $(bspc query -M --names) )
    for bspwm_monitor in "${bspwm_monitors[@]}"; do
        bspc monitor $bspwm_monitor --add-desktops Desktop
    done


    # Relocate desktops
    if [ $monitor_count = "1" ]; then
        bspc desktop "%${desktops[0]}"  --to-monitor ${monitors[0]}
        bspc desktop "%${desktops[1]}"  --to-monitor ${monitors[0]}
        bspc desktop "%${desktops[2]}"  --to-monitor ${monitors[0]}
        bspc desktop "%${desktops[3]}"  --to-monitor ${monitors[0]}
        bspc desktop "%${desktops[4]}"  --to-monitor ${monitors[0]}
        bspc desktop "%${desktops[5]}"  --to-monitor ${monitors[0]}
        bspc desktop "%${desktops[6]}"  --to-monitor ${monitors[0]}
        bspc desktop "%${desktops[7]}"  --to-monitor ${monitors[0]}
        bspc desktop "%${desktops[8]}"  --to-monitor ${monitors[0]}
        bspc desktop "%${desktops[9]}"  --to-monitor ${monitors[0]}
        bspc desktop "%${desktops[10]}" --to-monitor ${monitors[0]}
        bspc desktop "%${desktops[11]}" --to-monitor ${monitors[0]}

        bspc desktop "%${desktops[12]}" --to-monitor ${monitors[0]}

    elif [ $monitor_count = "2" ]; then
        bspc desktop "%${desktops[0]}"  --to-monitor ${monitors[1]}
        bspc desktop "%${desktops[1]}"  --to-monitor ${monitors[1]}
        bspc desktop "%${desktops[2]}"  --to-monitor ${monitors[1]}
        bspc desktop "%${desktops[3]}"  --to-monitor ${monitors[1]}
        bspc desktop "%${desktops[4]}"  --to-monitor ${monitors[1]}
        bspc desktop "%${desktops[5]}"  --to-monitor ${monitors[1]}
        bspc desktop "%${desktops[6]}"  --to-monitor ${monitors[1]}
        bspc desktop "%${desktops[7]}"  --to-monitor ${monitors[1]}
        bspc desktop "%${desktops[8]}"  --to-monitor ${monitors[1]}
        bspc desktop "%${desktops[9]}"  --to-monitor ${monitors[1]}
        bspc desktop "%${desktops[10]}" --to-monitor ${monitors[0]}
        bspc desktop "%${desktops[11]}" --to-monitor ${monitors[0]}
        bspc desktop "%${desktops[12]}" --to-monitor ${monitors[0]}

    else
        echo "ERROR too many active monitors: $monitor_count"
    fi


    # Remove the disconnected monitors. Only needed for virtualbox monitors?
    disconnected_monitors=( $(xrandr -q | grep " connected" | grep "connected (" | awk '{print $1}') )
    for disconnected_monitor in "${disconnected_monitors[@]}"; do
        # Also removes all desktops still on the monitor
        bspc monitor $disconnected_monitor --remove
    done
    

    #Delete all default desktops
    until ! bspc desktop Desktop --remove; do
        echo "Deleted default desktop."
    done


    # Reorder desktops, if they ended up in the wrong order
    bspc monitor -o \
        "%01. $(cat ~/.config/bspwm/spaces/01)" \
        "%02. $(cat ~/.config/bspwm/spaces/02)" \
        "%03. $(cat ~/.config/bspwm/spaces/03)" \
        "%04. $(cat ~/.config/bspwm/spaces/04)" \
        "%05. $(cat ~/.config/bspwm/spaces/05)" \
        "%06. $(cat ~/.config/bspwm/spaces/06)" \
        "%07. $(cat ~/.config/bspwm/spaces/07)" \
        "%08. $(cat ~/.config/bspwm/spaces/08)" \
        "%09. $(cat ~/.config/bspwm/spaces/09)" \
        "%10. $(cat ~/.config/bspwm/spaces/10)" \
        "%i. $(cat ~/.config/bspwm/spaces/i)" \
        "%o. $(cat ~/.config/bspwm/spaces/o)" \
        "%p. $(cat ~/.config/bspwm/spaces/p)" 
}

function fixPolybar() {
    killall polybar
    nohup polybar bar1 &
    nohup polybar bar2 &
}

configureMonitors
sleep 1
fixDesktops
fixPolybar

#bspc query -D --names
#bspc query -M --names
