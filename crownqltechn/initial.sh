#!/bin/bash
# Sync
telegram -M "OrangeFox (R11.0) - Note 9 (crownqltechn)
***🔄Sync started***"
SYNC_START=$(date +"%s")

sudo -E apt-get -qq update
sudo -E apt-get -qq install bc zip libstdc++6 python gcc clang libssl-dev repo flex aria2
sudo apt-get install default-jdk android-tools-adb bison build-essential curl flex g++-multilib gcc-multilib gnupg gperf imagemagick lib32readline-dev lib32z1-dev liblz4-tool libssl-dev libwxgtk3.0-dev libxml2 libxml2-utils lzop pngcrush yasm zlib1g-dev python3 python3-dev kernel-package bzip2 g++-multilib gcc-multilib make git libfdt-dev ccache flex g++-multilib gcc-multilib gnupg gperf imagemagick lib32ncurses5-dev libsdl1.2-dev libssl-dev rsync schedtool squashfs-tools xsltproc openjdk-8-jdk repo byacc m4 libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev python3-pip
sudo curl --create-dirs -L -o /usr/local/bin/repo -O -L https://storage.googleapis.com/git-repo-downloads/repo
sudo chmod a+rx /usr/local/bin/repo

mkdir OrangeFox
cd OrangeFox
repo init --depth=1 -u https://gitlab.com/OrangeFox/Manifest.git -b fox_8.1
repo sync -j8 --force-sync

SYNC_END=$(date +"%s")
SYNC_DIFF=$((SYNC_END - SYNC_START))
telegram -M "OrangeFox (R11.0) - Note 9 (crownqltechn)
***✅Sync completed successfully in $((SYNC_DIFF / 60)) minute(s) and $((SYNC_DIFF % 60)) seconds***"
wget https://gitlab.com/OrangeFox/device/crownqltechn/-/raw/fox-8.1/build_of.sh
wget https://gitlab.com/RenatohRibeiro/orange-fox-build/-/blob/master/build.sh
sudo chmod +x build.sh
sudo chmod +x build_of.sh
git clone https://gitlab.com/OrangeFox/device/crownqltechn device/samsung/crownqltechn
git clone https://github.com/LineageOS/android_hardware_samsung -b lineage-15.1 hardware/samsung