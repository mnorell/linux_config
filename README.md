# linux_config
Nothing fancy, just my "setup a newly installed fedora"-scripts.

It installs and configures Sway with Waybar, setup my prefered look-n-feel and my standard setup of programs.

## prereq.
Install Fedora 41, make sure you have at least the same size swap as ram to enable hibernation.

`sudo dnf install ansible python3-psutil`

## Run
`bash run_install.sh`


## Manual steps.
- deep-sleep-fixes / enable hibernate
- setup git
- set `GRUB_GFXMODE=1920x1440` in `/etc/default/grub`, and run `sudo update-grub`
- `sudo dpkg-reconfigure console-setup`:
    Set: `UTF-8`, `Combined: Lat. Slav. Greek`, `Terminus`, max size.
- login to vscode settings sync.
- login to intellij settings sync, add catppuccin theme and icons, disable unused plugins.


## Todo
- Auto updates?
- Run powertop? Or laptop-mode-tools? Set good powersaving settings...
- fingerprint reader
