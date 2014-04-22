#!/bin/sh

usage_exit() {
  echo "usage: open_finder.sh [-h] [DIR]" 1>&2
  exit 1
}

while getopts h OPT
	do
		case $OPT in
			h)	usage_exit
				;;
		esac
	done

if [ $# -eq 0 ]; then
	DIR=`pwd`
else
	DIR=$1
fi

FINDER=/System/Library/CoreServices/Finder.app
echo "open $DIR"
open $FINDER $DIR
