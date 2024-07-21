#!/usr/bin/env bash

echo "Random Wall"

#if [ -d "$directory" ]; then
#    random_background=$(ls $directory/*.png | shuf -n 1)
#
#    hyprctl hyprpaper unload all
#    hyprctl hyprpaper preload $random_background
#    hyprctl hyprpaper wallpaper "$monitor, $random_background"
#
#fi

# Directory containing wallpapers
directory="$HOME/.config/hypr/wallpapers"

# Select a random background image
random_background=$(ls $directory/*.png | shuf -n 1)

# Get the primary monitor
monitor=$(hyprctl monitors | grep Monitor | awk '{print $2}')

# Path to the configuration file
hyprpaper_config_file="$HOME/.config/hypr/hyprpaper.conf"

# Prepare the new lines to write
new_preload="preload = $random_background"
new_wallpaper="wallpaper = $monitor,$random_background"

pkill hyprpaper
