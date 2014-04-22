#!/bin/sh

if [ $# -ne 1 ]; then
	echo "usage: restart_network.sh [interface]" 1>&2
	exit 1
else
	ifconfig $1 down
	echo $1 down
	ifconfig $1 up
	echo $1 up
fi
