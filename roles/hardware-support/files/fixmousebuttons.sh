
#!/bin/bash

# add this to desktop environment startup apps 
sleep 6

synclient RightButtonAreaLeft=0
synclient RightButtonAreaTop=0

synclient ClickFinger1=1
synclient ClickFinger2=2
synclient ClickFinger3=3
synclient TapButton1=1
synclient TapButton2=2
synclient TapButton3=3

synclient VertTwoFingerScroll=1
synclient HorizTwoFingerScroll=1

synclient VertScrollDelta=-30
synclient HorizScrollDelta=-70


#/home/markus/bin/touchegg &
#touchegg &
killall fusuma
fusuma -d

## Fusuma installed:
# (https://github.com/iberianpig/fusuma)
# sudo apt-get install libinput-tools xdotool ruby
# sudo gem install fusuma
# sudo gpasswd -a $USER input
# log out + in (to activate gpasswd command...)

# add to autostart in DE...
