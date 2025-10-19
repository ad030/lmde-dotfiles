#! /usr/bin/bash

set -o errexit

LC_ALL=C

default_sink=$(pactl get-default-sink)
max_volume_percent=200
if [ $2 ]; then
	delta=$2;
else
	delta=5;
fi

action="$1"

function usage_error {
	echo "Usage: $(basename $0) inc|dec|mute|unmute|toggle|fullmute"
	exit 1
}


function calc {
	echo "scale=5; $@" | bc
}

function get_volume {
	local percentage="[0-9]+%"
	echo $(pactl get-sink-volume $default_sink | cut -d '/' -f 2 | cut -d ' ' -f 2 | cut -d '%' -f 1)
}

function raise_volume {

	if [[ $(( $(get_volume) + $1)) -lt $max_volume_percent  ]]; then
		pactl set-sink-volume $default_sink +$1%;
	fi
}

function lower_volume {
	pactl set-sink-volume $default_sink -$1% 
}

function mute_volume {
	pactl set-sink-mute $default_sink $1
}

function startup_mute {
	pactl set-sink-volume $default_sink 0%
	pactl set-sink-mute $default_sink 1

}


function is_number {
	local value = "$1"
	echo "$value" | grep -Poq '^[0-9]+(?:\.[0-9]+|)$' && true || false
}

case "$action" in 
	mute)
		mute_volume 1
		;;
	unmute)
		mute_volume 0
		;;
	toggle)
		mute_volume toggle
		;;
	inc)
		raise_volume $delta
		;;
	dec)
		lower_volume $delta
		;;
	fullmute)
		startup_mute
		;;
	*)
		usage_error
		;;
esac

