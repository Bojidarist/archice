#!/bin/bash

git clone https://aur.archlinux.org/pulseeffects-legacy.git ./AUR/pulseeffects
cd ./AUR/pulseeffects && makepkg -si
cd ../../

sed -i '$i pulseeffects --gapplication-service &' ~/.xinitrc