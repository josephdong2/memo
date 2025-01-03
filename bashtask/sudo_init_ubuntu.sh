#!/bin/bash
# e: exit on fail, o: pipefail on any sub and exit, x print script, u ignore undefined names
set -euxo pipefail

# during this script use en_US.UTF-8
export LC_ALL=en_US.UTF-8

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

reboot
