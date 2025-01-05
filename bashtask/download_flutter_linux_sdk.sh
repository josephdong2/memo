#!/bin/bash -
FILENAME="flutter_linux_3.27.1-stable.tar.xz"
URL="https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/$FILENAME"
if [ -z $1 ]; then
	DES=~/Downloads
else
	DES=$1
fi;
SDKDIR=~/sdk
mkdir -p $SDKDIR
FLUTTERSDK=$SDKDIR/flutter
if [ -f "$DES/$FILENAME" ]; then
	echo "file already exists";
else
	wget $URL -P $DES
	tar -xf "$DES/$FILENAME" -C $SDKDIR/
	
fi;

if [ ! -d $FLUTTERSDK/bin ]; then
	echo "unexpected that $FLUTTERSDK/bin has not been created";
	exit 2;
else
	source lib1.sh;
	add_to_path "$FLUTTERSDK/bin";
	tail ~/.bashrc
fi;
