#!/bin/bash -
set euo pipefail

bash update_passwords.sh
bash create_asymmetric_keys.sh $USER $(secret-tool lookup unique "ssh-store:$HOME/.ssh/id_rsa")
bash use_ssh-agent.sh

bash db_create_role_given_username.sh $USER

echo "you should reboot!"


