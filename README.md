# linux_config
Nothing fancy, just my "setup a newly installed ubuntu"-scripts.

It installs and configures bspwm with Polybar, fonts, themes and my standard setup of programs.

## prereq.
Install ubuntu 24.04, make sure you have at least the same size swap as ram to enable hibernation.

`sudo apt install ansible python3-psutil`
or
`sudo dnf install ansible python3-psutil`

## Run
`bash run_install.sh`

(sudo echo for "passwordless sudo")


## Manual steps.
- deep-sleep-fixes / enable hibernate
- setup git
- set `GRUB_GFXMODE=1920x1440` in `/etc/default/grub`, and run `sudo update-grub`
- `sudo dpkg-reconfigure console-setup`:
    Set: `UTF-8`, `Combined: Lat. Slav. Greek`, `Terminus`, max size.
- login to vscode settings sync.
- login to intellij settings sync, add catppuccin theme and icons, disable unused plugins.


## Todo


### sway...
- everything

### Hyprland
- waybar
- mouse buttons
- mouse gestures, back + forward
- mouse pointers
- scrolling (Adding touch_scroll_multiplier 10.0 in my ~/.config/kitty/kitty.conf was enough)
- multimonitor
- lock screen


### Paper WM
- keyboard
- nautilus
- mouse, 3-button for right
- back in browser
- keyboard shortcuts
    - nautilus
    - vivaldi
    - terminal
    - close window?
    - rofi menus?


### BSPWM
- Auto updates?
- lock screen on lid close.
- Run powertop? Or laptop-mode-tools? Set good powersaving settings...
- fingerprint reader

## Setting up a test vm
Install ubuntu in virtualbox.
`sudo apt install build-essential dkms`
Insert guest additions cd, and install it.
`sudo adduser $USER vboxsf`
Add shared folders