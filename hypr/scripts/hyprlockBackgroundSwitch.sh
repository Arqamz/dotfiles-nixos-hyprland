#!/usr/bin/env bash

echo "Random hyprlock background"

# Directory containing wallpapers
directory="$HOME/.config/hypr/wallpapers"

# Check if the directory exists
if [ ! -d "$directory" ]; then
  echo "Directory $directory does not exist."
  exit 1
fi

# Select a random background image
random_background=$(ls "$directory"/*.png | shuf -n 1)

# Check if a random background was selected
if [ -z "$random_background" ]; then
  echo "No PNG files found in $directory."
  exit 1
fi

echo "Selected random background: $random_background"

# Path to the configuration file
hyprlock_config_file="$HOME/.config/hypr/hyprlock.conf"

# Check if the configuration file exists
if [ ! -f "$hyprlock_config_file" ]; then
  echo "Configuration file $hyprlock_config_file does not exist."
  exit 1
fi

# Read the config file and replace the path in the background section
awk -v new_path="$random_background" '
  BEGIN { in_background = 0 }
  /background {/ { in_background = 1 }
  in_background && /path =/ && !seen_path++ { print "    path = " new_path; next }
  /}/ { in_background = 0 }
  { print }
' "$hyprlock_config_file" > "$hyprlock_config_file.tmp" && mv "$hyprlock_config_file.tmp" "$hyprlock_config_file"

# Verify the changes
grep "path =" "$hyprlock_config_file"
