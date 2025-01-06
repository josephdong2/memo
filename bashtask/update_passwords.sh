#!/bin/bash -

if [ -z $1 ]; then
	echo "missing username at \$1"
	exit 1;
fi;

set -euo pipefail

read -p "Enter password filepath: " PWFP;

echo -n $(../pytask/getpw.py ssh-keygen id_rsa < $PWFP) | secret-tool store --label='Unlock password for: jd@atx' unique "/home/$1/.ssh/id_rsa"
echo -n $(../pytask/getpw.py postgresql jd < $PWFP) | secret-tool store --label="postgresql_$1" postgresql $1
