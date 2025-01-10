#!/bin/bash -
set -euo pipefail

FILENAME="google-chrome-stable_current_amd64.deb"
URL="https://dl.google.com/linux/direct/$FILENAME"
DEB=~/Downloads/"$FILENAME"

if [ -f "$DEB" ]; then
	echo "deb file already exists";
else
	wget $URL -P ~/Downloads	
fi;

sudo dpkg -i $DEB
