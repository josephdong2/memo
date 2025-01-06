#!/bin/bash -
if [ ! -f $PWFP ]; then
	read -p "Password filepath: " PWFP;
fi;
ssh-keygen -p -f ~/.ssh/id_rsa -N $(../pytask/getpw.py ssh-keygen id_rsa < $PWFP) -P $(../pytask/getpw.py ssh-keygen.old id_rsa < $PWFP)

