#!/bin/bash -
deb https://cloud.r-project.org/bin/linux/ubuntu noble-cran40/
sudo apt --yes update
sudo apt --yes install r-base
sudo apt --yes install libzmq3-dev libharfbuzz-dev libfribidi-dev libfreetype6-dev libpng-dev libtiff5-dev libjpeg-dev build-essential libcurl4-openssl-dev libxml2-dev libssl-dev libfontconfig1-dev
sudo apt --yes install r-cran-devtools
