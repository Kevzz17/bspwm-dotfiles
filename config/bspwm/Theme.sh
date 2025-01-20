#!/usr/bin/env bash
##
## LAIN RICE THEME
##
## This file will configure the options
## and launch the bars corresponding to each theme.

# Reload terminal colors

# Set compositor configuration
# Set rofi launcher
set_rofi_config() {
    cp -f ~/.config/bspwm/launcher.rasi ~/.config/bspwm/scripts/RiceSelector.rasi
}

# Launch the bar
launch_bars() {
	polybar -q lain-bar -c ${HOME}/.config/bspwm/config.ini &
	polybar -q lain-bar2 -c ${HOME}/.config/bspwm/config.ini &
	polybar -q lain-bar3 -c ${HOME}/.config/bspwm/config.ini &
}

### ---------- Apply Configurations ---------- ###
set_rofi_config
launch_bars