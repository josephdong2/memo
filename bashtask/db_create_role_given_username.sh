#!/bin/bash -
if [ -z $1 ]; then
	echo "missing username";
	exit 1;
fi;
sudo -u postgres psql -c "create role $1 WITH LOGIN PASSWORD '$(secret-tool lookup postgresql $1)';"
