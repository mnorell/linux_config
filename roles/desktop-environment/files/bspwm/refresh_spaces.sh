#/bin/bash

# Single monitor

bspc monitor -d \
"1. $(cat ~/.config/bspwm/spaces/1)" \
"2. $(cat ~/.config/bspwm/spaces/2)" \
"3. $(cat ~/.config/bspwm/spaces/3)" \
"4. $(cat ~/.config/bspwm/spaces/4)" \
"5. $(cat ~/.config/bspwm/spaces/5)" \
"6. $(cat ~/.config/bspwm/spaces/6)" \
"7. $(cat ~/.config/bspwm/spaces/7)" \
"8. $(cat ~/.config/bspwm/spaces/8)" \
"9. $(cat ~/.config/bspwm/spaces/9)" \
"10. $(cat ~/.config/bspwm/spaces/10)" 


# Dual monitor, in vm
bspc monitor Virtual1 -d \
"1. $(cat ~/.config/bspwm/spaces/1)" \
"2. $(cat ~/.config/bspwm/spaces/2)" \
"3. $(cat ~/.config/bspwm/spaces/3)" \
"4. $(cat ~/.config/bspwm/spaces/4)" \
"5. $(cat ~/.config/bspwm/spaces/5)" 

bspc monitor Virtual2 -d \
"6. $(cat ~/.config/bspwm/spaces/6)" \
"7. $(cat ~/.config/bspwm/spaces/7)" \
"8. $(cat ~/.config/bspwm/spaces/8)" \
"9. $(cat ~/.config/bspwm/spaces/9)" \
"10. $(cat ~/.config/bspwm/spaces/10)" 

#bspc monitor Virtual1 -d \
#"1. $(cat ~/.config/bspwm/spaces/1)" \
#"3. $(cat ~/.config/bspwm/spaces/3)" \
#"5. $(cat ~/.config/bspwm/spaces/5)" \
#"7. $(cat ~/.config/bspwm/spaces/7)" \
#"9. $(cat ~/.config/bspwm/spaces/9)" \

#bspc monitor Virtual2 -d \
#"2. $(cat ~/.config/bspwm/spaces/2)" \
#"4. $(cat ~/.config/bspwm/spaces/4)" \
#"6. $(cat ~/.config/bspwm/spaces/6)" \
#"8. $(cat ~/.config/bspwm/spaces/8)" \
#"10. $(cat ~/.config/bspwm/spaces/10)" \


#bspc monitor Virtual1 -d \
#"1. $(cat ~/.config/bspwm/spaces/1)" \
#"3. $(cat ~/.config/bspwm/spaces/3)" \
#"5. $(cat ~/.config/bspwm/spaces/5)" \
#"7. $(cat ~/.config/bspwm/spaces/7)" \
#"9. $(cat ~/.config/bspwm/spaces/9)" \

#bspc monitor Virtual2 -d \
#"2. $(cat ~/.config/bspwm/spaces/2)" \
#"4. $(cat ~/.config/bspwm/spaces/4)" \
#"6. $(cat ~/.config/bspwm/spaces/6)" \
#"8. $(cat ~/.config/bspwm/spaces/8)" \
#"10. $(cat ~/.config/bspwm/spaces/10)" \


