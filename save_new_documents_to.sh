#!/bin/sh

if [ $# -ne 1 ]; then
  echo "usage: ./save_new_documents_to.sh [local|cloud]" 1>&2
  exit 1
fi

if [ $1 = "local" ]; then
	defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false
	killall Dock
	echo "Save new documents to Local"
elif [ $1 = "cloud" ]; then
	defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool true
	killall Dock
	echo "Save new documents to iCloud"
fi
