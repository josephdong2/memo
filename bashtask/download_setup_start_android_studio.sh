#!/bin/bash -
set -euo pipefail

FILENAME="android-studio-2024.2.1.12-linux.tar.gz"
TARBALL="$HOME/Downloads/$FILENAME"
if [ -f $TARBALL ]; then
	echo "tarball already exists";
else
	ANDROIDSTUDIO_DOWNLOAD_URL="https://redirector.gvt1.com/edgedl/android/studio/ide-zips/2024.2.1.12/$FILENAME"
	wget $ANDROIDSTUDIO_DOWNLOAD_URL -P ~/Downloads 
fi;

if [ -z $1 ]; then
	DES="$HOME/Downloads"
else
	if [ -d $1 ]; then
		DES=$1;
	else
		echo "invalid extraction directory $1";
		exit 1;
	fi;
fi;
BINDIR=$DES/android-studio/bin
if [ ! -d $BINDIR ]; then
	tar zxvf $TARBALL  -C "$DES/";
fi;

$BINDIR/studio &
