#!/usr/bin/env bash

dir="$HOME/.config/polybar/"
themes=("ls --hide='launch.sh' $dir")

# terminate already running bar instances
launch_bar() {
        polybar-msg cmd quit;

        polybar -c "$dir/bars/$style.ini"
}

if [[ "$1" == "--catppuccin-macchiato" ]] then
        style="catppuccin-macchiato"
        launch_bar

elif [[ "$1" == "--tokyonight-storm" ]] then
        style="tokyonight-storm"
        launch_bar
elif [[ "$1" == "--gruvbox-dark" ]] then
        style="gruvbox-dark"
        launch_bar
else
        style="catppuccin-macchiato"
        launch_bar
fi

