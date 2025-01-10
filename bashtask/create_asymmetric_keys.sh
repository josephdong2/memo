#!/bin/bash -

if [ -z "$1" ]; then
	echo "missing username";
	exit 1;
fi;
if [ -z "$2" ]; then
	echo "missing passphrase";
	exit 1;
fi;
ssh-keygen -t rsa -b 4096 -f "/home/$1/.ssh/id_rsa" -N "$2" <<< n
