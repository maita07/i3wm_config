#!/bin/bash

# Set of packages and configurations for i3wm customized to my liking.
# This script is intended for Debian 12.

# Update package lists and install necessary packages
sudo apt update && sudo apt install -y i3 feh rofi brightnessctl gtk2-engines-murrine flameshot fonts-dejavu lxappearance

# Add current user to the video group for brightness control
sudo usermod -aG video $USER

# Prepare directory for wallpapers
mkdir -p ~/.config/wallpaper/
echo "Wallpaper directory created."
cp wallpapers/wallpaper* ~/.config/wallpaper/
echo "Wallpapers copied."

# Ensure the i3 configuration directory exists and copy the config
mkdir -p ~/.config/i3/
cp config ~/.config/i3/
echo "Configuration copied."

# config rofi
mkdir -p ~/.config/rofi
cp config_rofi/config.rasi ~/.config/rofi
cp config_rofi/catppuccin-lavrent-mocha.rasi ~/.config/rofi

# theme
mkdir -p ~/.themes
mkdir -p ~/.config/gtk-3.0
cp -r catppuccin_theme/Catppuccin-Dark-Macchiato ~/.themes
cp -r catppuccin_theme/Catppuccin-Dark-Macchiato-xhdpi ~/.themes
cp -r catppuccin_theme/Catppuccin-Dark-Macchiato-hdpi ~/.themes
cp catppuccin_theme/settings.ini ~/.config/gtk-3.0/
cp catppuccin_theme/gtk.css ~/.config/gtk-3.0/
