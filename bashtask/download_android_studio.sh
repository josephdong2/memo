#!/bin/bash -
if [ -z $1 ]; then
	DES=~/Downloads
else
	if [ -d $1 ]; then
		DES=$1;
	else
		echo "invalid download directory $1";
		exit 1;
	fi;
fi;
FILENAME="android-studio-2024.2.1.12-linux.tar.gz"
if [ -f "$DES/$FILENAME" ]; then
	echo "file already exists";
	exit 2;
else
	ANDROIDSTUDIO_DOWNLOAD_URL="https://redirector.gvt1.com/edgedl/android/studio/ide-zips/2024.2.1.12/$FILENAME"
	wget $ANDROIDSTUDIO_DOWNLOAD_URL -P $DES
fi;

if [ ! -d "$DES/android-studio" ]; then
	tar zxvf "$DES/$FILENAME";
fi;



