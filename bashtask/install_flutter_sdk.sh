#!/bin/bash -
# Install the following packages
sudo apt-get update -y && sudo apt-get upgrade -y;
sudo apt-get install -y curl git unzip xz-utils zip libglu1-mesa
# Install the following prerequisite packages for Android Studio
sudo apt-get install libc6:amd64 libstdc++6:amd64 lib32z1 libbz2-1.0:amd64
# Install Android Studio 2023.3.1 (Jellyfish) or later to debug and compile Java or Kotlin code for Android. Flutter requires the full version of Android Studio.

bash download_android_studio.sh
bash download_flutter_linux_sdk.sh

