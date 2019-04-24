#!/bin/bash
echo "Disk Info Listing"

# Check if running as root
if (( $EUID != 0 )); then
	echo "Please run as root."
	exit
fi

# Check if smartctl/smartmontools exist
cmd="smartctl"
command -v $cmd >/dev/null 2>&1 || { echo >&2 "I require $cmd but it's not installed. Try 'sudo apt install smartmontools'. Aborting."; }

# List the disks, and filter to the ones we care about
# -- just don't display all of the /dev/loop* disks
echo "Device name from 'fisk'"
fdisk -l | grep 'Disk /dev/sd*'

echo "Info from 'smartctl'"
smartctl -a /dev/sda