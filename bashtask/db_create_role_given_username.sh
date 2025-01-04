#!/bin/bash -
if [ -z $1 ]; then
	echo "missing username";
	exit 1;
fi;
declare -n DBPWUSER="DBPW_$1";
if [ -z $DBPWUSER ]; then 
	DBPWUSER=$(../pytask/getpw.py postgresql $1 < $PWFP)
	if [ -z $DBPWUSER ]; then
		echo "missing password in file";
		exit 2;
	fi;
	echo "DBPW_$1=$DBPWUSER" | sudo tee -a /etc/environment >/dev/null 
	echo "You should relogin!";
fi;
sudo -u postgres psql -c "create role $1 WITH LOGIN PASSWORD '$DBPWUSER';"
