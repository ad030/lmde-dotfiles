#!/usr/bin/env bash

dir="$HOME/.config/polybar/"
themes=("ls --hide='launch.sh' $dir")

# terminate already running bar instances
launch_bar() {
        polybar-msg cmd quit;

        polybar -c "$dir/configs/$style.ini"
}

if [[ "$1" == "--catppuccin" ]] then
        style="catppuccin"
        launch_bar

elif [[ "$1" == "--tokyonight" ]] then
        style="tokyonight"
        launch_bar
elif [[ "$1" == "--gruvbox" ]] then
        style="gruvbox"
        launch_bar
else
        style="catpuccin"
        launch_bar
fi

