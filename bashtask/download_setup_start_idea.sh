#!/bin/bash -
set -euxo pipefail
FILENAME="ideaIU-2024.3.1.1.tar.gz"
TARBALL="$HOME/Downloads/$FILENAME"
EXEFILE=idea
if [ $# == 0 ]; then
	DES="/opt/jetbrains"
else
	if [ -d "$1" ]; then
		DES=$1;
	else
		echo "invalid extraction directory $1";
		exit 1;
	fi;
fi;
BIN="$DES/idea-IU-243.22562.218/bin"

if [ -f "$TARBALL" ]; then
	echo "tarball already exists";
else
	URL="https://download.jetbrains.com/idea/$FILENAME"
	wget $URL -P ~/Downloads
fi;


if [ ! -d "$BIN" ]; then
	tar zxvf "$TARBALL" -C "$DES/";
fi;

if [ ! -f "/bin/$EXEFILE" ]; then
        echo "adding links to executable";
        sudo ln -s "$BIN/$EXEFILE" "/usr/bin/$EXEFILE"
fi;

