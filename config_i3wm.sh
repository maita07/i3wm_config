#!/bin/bash

# Set of packages and configurations for I3wm to have everything customized to my liking. It only works for Linux Xubuntu.

# Necessary packages to install
sudo apt update && sudo apt install -y i3 feh rofi brightnessctl flameshot fonts-cascadia-code lxappearance

# Necessary permise for brightnessctl work
sudo usermod -aG video $USER

# preconfig para el wallpaper
mkdir -p ~/.config/wallpaper/
echo "Se creo el directorio de wallpapers."
cp wallpaper* ~/.config/wallpaper/
echo "Se copiaron los wallpapers."

# Copy the i3 config
cp config ~/.config/i3/
echo "Se copió la configuración."
