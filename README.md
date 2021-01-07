# linux_config
Nothing fancy, just my "setup a newly installed ubuntu"-scripts.

It installs and configures bspwm with Polybar, fonts, themes and my standard setup of programs.

Currently work in progress, I'm transfering to bspwm from regolith/i3.


## run.
There will be some errors. Things change, I update the scripts to reflect my local changes and test them when I perform my next install...
```
> Install Xubtunu 20.10
> ./install_base_packages
> ./apply_my_config

> Perform manual steps...
```

## TODOs
- Restructure apply config script, make it more like a deploy script.
- Use fish (add to install script, use only in gnome terminal)
- Add the manual steps to this readme. (Currently echoed in the scripts)
- battery warning

- notification deamon, dunst?
- clipboard manager, https://github.com/cdown/clipmenu ?
- nice theme...
- polybar, cleanup...
- sxhkd
  - move workspace to other screen.
  - logout menu. perhaps just bspc quit
  - ranger
  - gnome-control-center --class=floating_window
  - keyboard layout switch
- Fix configs for gedit, terminal, thunar?
- Add cool ranger plugins.
- lock screen on lid close.
