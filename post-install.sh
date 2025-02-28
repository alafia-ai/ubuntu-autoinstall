#!/bin/bash

# install autorotate shell extension

gnome-extensions install https://extensions.gnome.org/extension-data/screen-rotateshyzus.github.io.v24.shell-extension.zip
gnome-extensions enable screen-rotate@shyzus.github.io

# install accel-sensor-bridge
wget https://github.com/imrisaac/iio_accel_screen_rotation/raw/refs/heads/main/accel-sensor-bridge.deb
apt-get install -y ./accel-sensor-bridge.deb
rm -rf accel-sensor-bridge.deb


# Install cuda and gpu drivers
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2404/sbsa/cuda-ubuntu2404.pin
mv cuda-ubuntu2404.pin /etc/apt/preferences.d/cuda-repository-pin-600
wget https://developer.download.nvidia.com/compute/cuda/12.8.0/local_installers/cuda-repo-ubuntu2404-12-8-local_12.8.0-570.86.10-1_arm64.deb
dpkg -i cuda-repo-ubuntu2404-12-8-local_12.8.0-570.86.10-1_arm64.deb
cp /var/cuda-repo-ubuntu2404-12-8-local/cuda-*-keyring.gpg /usr/share/keyrings/
apt-get update
apt-get -y install cuda-toolkit-12-8
apt-get install -y nvidia-open
