#! /usr/bin/bash

drive_uuids=("7A53-2FB6" "EC43-9BD1")

function mount_drives () {
	for drive in ${drive_uuids[@]}; do
		udisksctl mount --block-device /dev/disk/by-uuid/$drive --no-user-interaction
	done
}

function unmount_drives() {
	for drive in ${drive_uuids[@]}; do
		udisksctl unmount --block-device /dev/disk/by-uuid/$drive --no-user-interaction
	done
}

function bad_usage() {
	echo "usage: $0 [mount|unmount]"
	exit 1
}

if [ "$#" -ne 1 ]; then
	bad_usage
fi

case $1 in
	"mount")
		mount_drives
		exit 0
	;;
	"unmount")
		unmount_drives
		exit 0
	;;
	*)	
		bad_usage
		exit 1
	;;
esac
