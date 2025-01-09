#!/bin/bash -

# sudo mv /var/lib/dpkg/info/install-info.postinst /var/lib/dpkg/info/install-info.postinst.bad
apt --yes install tasksel
apt --yes install libsecret-tools
apt --yes install net-tools
apt --yes install ifmetric
apt --yes install curl
apt --yes install postgresql
apt --yes install build-essential
apt --yes install clang cmake ninja-build libgtk-3-dev
apt --yes install nvidia-cuda-toolkit
