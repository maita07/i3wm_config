#!/bin/bash

# Set of packages and configurations for I3wm to have everything customized to my liking. It only works for Linux Xubuntu.

# Necessary packages to install
sudo apt update && apt install -y i3 feh rofi brightnessctl flameshot fonts-cascadia-code lxappearance

# Necessary permise for brightnessctl work
sudo usermod -aG video $USER

# preconfig para el wallpaper
mkdir -p ~/.config/wallpaper/
cp wallpaper* ~/.config/wallpaper/

# Copy the i3 config
cp config ~/.config/i3/
