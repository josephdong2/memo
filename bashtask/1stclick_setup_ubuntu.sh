#!/bin/bash -
set -euo pipefail
sudo bash sudo_init_ubuntu.sh "$USER"
bash download_setup_openjdk.sh
sudo apt --yes install maven gradle
bash download_setup_chrome.sh
bash download_setup_chrome_webdriver.sh
bash download_setup_start_pycharm.sh
bash download_setup_start_idea.sh
