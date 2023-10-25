#/bin/bash

monitors=( $(bspc query -M --names | sort) )
#monitors=( $(xrandr -q | grep " connected" | awk '{print $1}' | sort) )
monitor_count=${#monitors[@]}

if [ $monitor_count = "1" ]; then
    bspc monitor -d \
        "01. $(cat ~/.config/bspwm/spaces/01)" \
        "02. $(cat ~/.config/bspwm/spaces/02)" \
        "03. $(cat ~/.config/bspwm/spaces/03)" \
        "04. $(cat ~/.config/bspwm/spaces/04)" \
        "05. $(cat ~/.config/bspwm/spaces/05)" \
        "06. $(cat ~/.config/bspwm/spaces/06)" \
        "07. $(cat ~/.config/bspwm/spaces/07)" \
        "08. $(cat ~/.config/bspwm/spaces/08)" \
        "09. $(cat ~/.config/bspwm/spaces/09)" \
        "10. $(cat ~/.config/bspwm/spaces/10)" \
        "i. $(cat ~/.config/bspwm/spaces/i)" \
        "o. $(cat ~/.config/bspwm/spaces/o)" \
        "p. $(cat ~/.config/bspwm/spaces/p)" 

elif [ $monitor_count = "2" ]; then
    bspc monitor ${monitors[0]} -d \
        "01. $(cat ~/.config/bspwm/spaces/01)" \
        "02. $(cat ~/.config/bspwm/spaces/02)" \
        "03. $(cat ~/.config/bspwm/spaces/03)" \
        "04. $(cat ~/.config/bspwm/spaces/04)" \
        "05. $(cat ~/.config/bspwm/spaces/05)" \
        "06. $(cat ~/.config/bspwm/spaces/06)" \
        "07. $(cat ~/.config/bspwm/spaces/07)" \
        "08. $(cat ~/.config/bspwm/spaces/08)" \
        "09. $(cat ~/.config/bspwm/spaces/09)" \
        "10. $(cat ~/.config/bspwm/spaces/10)" 
    bspc monitor ${monitors[1]} -d \
        "i. $(cat ~/.config/bspwm/spaces/i)" \
        "o. $(cat ~/.config/bspwm/spaces/o)" \
        "p. $(cat ~/.config/bspwm/spaces/p)" 

elif [ $monitor_count = "3" ]; then
    bspc monitor ${monitors[0]} -d \
        "01. $(cat ~/.config/bspwm/spaces/01)" \
        "02. $(cat ~/.config/bspwm/spaces/02)" \
        "03. $(cat ~/.config/bspwm/spaces/03)" \
        "04. $(cat ~/.config/bspwm/spaces/04)" \
        "05. $(cat ~/.config/bspwm/spaces/05)"
    bspc monitor ${monitors[1]} -d \
        "06. $(cat ~/.config/bspwm/spaces/06)" \
        "07. $(cat ~/.config/bspwm/spaces/07)" \
        "08. $(cat ~/.config/bspwm/spaces/08)" \
        "09. $(cat ~/.config/bspwm/spaces/09)" \
        "10. $(cat ~/.config/bspwm/spaces/10)" 
    bspc monitor ${monitors[2]} -d \
        "i. $(cat ~/.config/bspwm/spaces/i)" \
        "o. $(cat ~/.config/bspwm/spaces/o)" \
        "p. $(cat ~/.config/bspwm/spaces/p)" 

else
    echo "ERROR"
fi
