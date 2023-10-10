# linux_config
Nothing fancy, just my "setup a newly installed ubuntu"-scripts.

It installs and configures bspwm with Polybar, fonts, themes and my standard setup of programs.

## prereq.
Install ubuntu 23.10, make sure you have at least the same size swap as ram to enable hibernation.

`sudo apt install ansible python3-psutil`
or
`sudo dnf install ansible python3-psutil`

## Run
`sudo echo "" && ansible-playbook desktop-env.yaml`

(sudo echo for "passwordless sudo")


## Manual steps.
- deep-sleep-fixes
- setup git

## Todo
- Auto updates?
- lock screen on lid close.
- Run powertop? Or laptop-mode? Set good powersaving settings...
- fingerprint reader
