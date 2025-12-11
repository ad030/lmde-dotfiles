#! /usr/bin/bash

screenshot_dir="$HOME/Pictures/Screenshots"

if [ ! -d "$screenshot_dir" ]; then
	mkdir -pv $HOME/Pictures/Screenshots;
fi

screenshot_filename="$(date +%Y-%m-%dT%H%M%S).png"

screenshot_path="$screenshot_dir/$screenshot_filename"

# screenshot and save to file
gnome-screenshot -a -f $screenshot_path

# copy to clipboard because -c flag in gnome-screenshot does not work for some reason
xclip -sel clip < /dev/null
xclip -selection clip -t image/png $screenshot_path
