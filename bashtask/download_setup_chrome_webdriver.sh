#!/bin/bash -
FILENAME=chromedriver_linux64.zip
URL="https://chromedriver.storage.googleapis.com/114.0.5735.90/$FILENAME"
DES="/usr/bin"
if [ -f "/$HOME/Downloads/$FILENAME" ]; then
	echo "zipfile already exists";
else
	wget $URL -P "$HOME/Downloads"
fi;

sudo unzip ~/Downloads/$FILENAME -d $DES

