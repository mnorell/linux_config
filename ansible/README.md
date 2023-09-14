# linux_config
Nothing fancy, just my "setup a newly installed ubuntu"-scripts.

It installs and configures bspwm with Polybar, fonts, themes and my standard setup of programs.

Currently work in progress...

## prereq.
`sudo apt-get install ansible python3-psutil`

## Run
First run `sudo ls` to enable "passwordless sudo".

`ansible-playbook desktop-env.yaml`


## Manual steps.
- Setup custom keyboard layout.
- deep-sleep-fixes

## Todo
- Fedora support
- Run powertop? Set good powersaving settings...

Git setup?
