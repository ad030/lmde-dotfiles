#! /usr/bin/bash

screenshot_dir="$HOME/Pictures/Screenshots"

if [ ! -d "$screenshot_dir" ]; then
	mkdir -pv $HOME/Pictures/Screenshots;
fi

screenshot_filename="$(date +%Y-%m-%dT%H%M%S).png"

screenshot_path="$screenshot_dir/$screenshot_filename"

# screenshot and save to file
grim -g "$(slurp)" $screenshot_path

# copy to clipboard 
wl-copy --paste-once < $screenshots_path

