#!/bin/bash
# e: exit on fail, o: pipefail on any sub and exit, x print script, u ignore undefined names
if [ -z $1 ]; then
	echo "missing username at \$1";
	exit 1;
fi;
set -eo pipefail

# during this script use en_US.UTF-8
export LC_ALL=en_US.UTF-8

read -p "Enter password filepath: " PWFP;
if [[ ! -f $PWFP ]]; then
	echo "invalid filepath";
	exit 1;
fi;
DBPW=$(../pytask/getpw.py postgresql $1 < $PWFP)
if [ -z $DBPW ]; then
	echo "missing postgresql/$usersudo password";
	exit 1;
fi;

PKPASS=$(../pytask/getpw.py ssh-keygen id_rsa < $PWFP)
if [ -z $PKPASS ]; then
	echo "missing ssh-keygen/id_rsa passphrase";
	exit 1;
fi;

echo "PWFP=$PWFP" >> /etc/environment
echo "DBPW_$1=$DBPW" >> /etc/environment
echo "PKPASS=$PKPASS" >> /etc/environment

# cf: timedatectl list-timezones
TIMEZONE=Asia/Hong_Kong
timedatectl set-timezone ${TIMEZONE}

add-apt-repository --yes universe
add-apt-repository --yes multiverse
apt update
echo "if error check /etc/apt/sources.list"
apt --yes -o Dpkg::Options::="--force-confnew" upgrade

#configure ufw
ufw --force enable



echo "if error check /etc/apt/sources.list.d/ubuntu.sources"
apt --yes install locales-all
apt --yes install fail2ban

bash create_asymmetric_keys.sh $1 $PKPASS

# reboot required for /etc/environment to be loaded at login
reboot
