#! /usr/bin/bash

date_time=$(date +"%Y-%m-%d %H:%M")

battery_charge=$(cat /sys/class/power_supply/BAT0/capacity)
battery_status=$(cat /sys/class/power_supply/BAT0/status)

# audio_volume=$(pamixer --sink `pactl list sinks short | grep RUNNING | awk '{print $1}'` --get-volume)
audio_volume=$(pamixer --get-volume)
audio_is_muted=$(pamixer --get-mute)

network=$(ip route get 1.1.1.1 | grep -Po '(?<=dev\s)\w+' | cut -f1 -d ' ')

brightness_percentage=$(($(brightnessctl get) * 100 / $(brightnessctl max)))
brightness_symbol=""

if [ $battery_status != "Discharging" ];
then
    battery_pluggedin=''
else
    if [ $battery_charge -ge 80 ]; then
	battery_pluggedin=''
    elif [ $battery_charge -ge 60 ]; then
	battery_pluggedin=''
    elif [ $battery_charge -ge 40 ]; then
	battery_pluggedin=''
    elif [ $battery_charge -ge 20 ]; then
	battery_pluggedin=''
    else
	battery_pluggedin=''
    fi
fi

if [ $network ]; then
   network_active=""
else
   network_active=""
fi

if [ $audio_is_muted = "true" ]; then
    audio_active=''
else
    if [ $audio_volume -ge 50 ]; then
	audio_active=''
    else
	audio_active=''
    fi
fi

# formatting before printing values

battery_charge="$battery_charge%"
audio_volume="$audio_volume%"
brightness_percentage="$brightness_percentage%"

echo "$network_active | $brightness_symbol $brightness_percentage | $audio_active $audio_volume | $battery_pluggedin $battery_charge | $date_time"
