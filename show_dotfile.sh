#!/bin/sh

if [ $# -ne 1 ]; then
  echo "usage: ./show_dotfile.sh [show|hide]" 1>&2
  exit 1
fi

if [ $1 = "show" ]; then
	defaults write com.apple.finder AppleShowAllFiles -boolean true
	killall Finder
	echo "show dotfiles"
elif [ $1 = "hide" ]; then
	defaults write com.apple.finder AppleShowAllFiles -boolean false
	killall Finder
	echo "hide dotfiles"
fi
