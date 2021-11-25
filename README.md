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

## Manual steps.
Install vivaldi, [download here](https://vivaldi.com/sv/download/).

## TODOs
- Restructure apply config script, make it more like a deploy script that can run multiple times.
- Use fish (add to install script, use only in gnome terminal)
- Add the manual steps to this readme. (Currently echoed in the scripts)
- install script installs font for polybar.

- battery warning
- deep sleep on lid close
- fingerprint reader
- lock screen on lid close.
- encrypt home dir

- select rofi theme in apply script.

- notification deamon, dunst?
- clipboard manager, https://github.com/cdown/clipmenu ?
- nice theme...
- polybar, cleanup config.
- sxhkd, bspwm, move workspace to other screen.
- Apply configs for gedit, terminal, thunar

