#!/bin/bash

# Set of packages and configurations for i3wm customized to my liking.
# This script is intended for Xubuntu.

# Update package lists and install necessary packages
sudo apt update && sudo apt install -y feh rofi brightnessctl flameshot fonts-dejavu lxappearance

# Add current user to the video group for brightness control
sudo usermod -aG video $USER

# Prepare directory for wallpapers
mkdir -p ~/.config/wallpaper/
echo "Wallpaper directory created."
cp wallpapers/wallpaper* ~/.config/wallpaper/
echo "Wallpapers copied."

# Ensure the i3 configuration directory exists and copy the config
cp config ~/.config/i3/
echo "Configuration copied."
