#! /usr/bin/bash

valid_audio_formats=( "wav" )

if ! command -v sox &> /dev/null; then
        echo "Error: sox not installed"
        exit 1
fi

echo "converting hi-res audio in $(pwd) to flac format"

for format in "${valid_audio_formats[@]}"; do
        for file in *."$format"; do 
                echo "$file converting to ${x%.$file}"
                sox "$file" "${x%.flac}"
        done
done
