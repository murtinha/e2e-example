#!/usr/bin/env bash
# fail if any commands fails
set -e
# debug log
set -x
cd $ANDROID_HOME
sudo rm -rf $ANDROID_HOME/emulator
wget -q https://dl.google.com/android/repository/emulator-darwin-5346014.zip
unzip -q emulator-darwin-5346014.zip
ls -al $ANDROID_HOME/emulator
echo no | avdmanager create avd -n emulator-5554 -k "system-images;android-28;google_apis;x86" -d pixel --force
cd -
$ANDROID_HOME/emulator/emulator -list-avds
avdmanager list avd
