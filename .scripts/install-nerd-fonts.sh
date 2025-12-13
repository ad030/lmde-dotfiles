#! /usr/bin/bash

fonts_to_install=(
        "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/JetBrainsMono.zip"
        "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/Meslo.zip"
)

mkdir -p "$HOME/.local/share/fonts/"

for file in ${fonts_to_install[@]}; do
        TEMP=$(mktemp -d)
        wget -O "$TEMP/font.zip" "$file";
        unzip "$TEMP/font.zip" -d "$TEMP"
        mv "$TEMP"/*.{ttf,otf} "$HOME/.local/share/fonts/"
        rm -rf "$TEMP"
done
