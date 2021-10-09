#!/usr/bin/env bash
sudo apt update
sudo apt list --upgradable
sudo apt install awesome lua5.4 emacs scrot xclip git brightnessctl xfonts-terminus acpi
git clone https://github.com/taiseiyo/awesome_wm.git
cd awesome_wm
cp xinitrc ~/.xinitrc
cp Xdefaults ~/.Xdefaults
mkdir -p ~/.config/awesome/
mkdir -p ~/tmp/screenshots/
cp -r rc.lua widget/ themes/ ~/.config/awesome/
