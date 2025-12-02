#! /usr/bin/bash

drive_uuids=("7A53-2FB6" "EC43-9BD1")

for drive in ${drive_uuids[@]}; do
	udisksctl mount --block-device /dev/disk/by-uuid/$drive --no-user-interaction
done
