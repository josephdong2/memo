#!/bin/bash -
FILENAME="openjdk-23.0.1_linux-x64_bin.tar.gz"
URL="https://download.java.net/java/GA/jdk23.0.1/c28985cbf10d4e648e4004050f8781aa/11/GPL/$FILENAME"
CMD=javac
if [ -z "$1" ]; then
	DES=~/Downloads
else
	DES=$1
fi;
SDKDIR=/opt
mkdir -p $SDKDIR
CURSDK=$SDKDIR/jdk-23.0.1
if [ -f "$DES/$FILENAME" ]; then
	echo "file already exists";
else
	wget $URL -P "$DES"
	sudo tar -xf "$DES/$FILENAME" -C $SDKDIR/
	
fi;

if [ ! -d $CURSDK ]; then
	echo "unexpected that $CURSDK has not been created";
	exit 2;
else
	if [ -z "$(which $CMD)" ]; then
		source lib1.sh;
		add_to_path "$CURSDK/bin";
	fi;
	tail ~/.bashrc
fi;
