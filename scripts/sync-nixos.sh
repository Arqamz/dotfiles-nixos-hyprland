#!/run/current-system/sw/bin/bash

###############################################
#NIXOS
###############################################

# Define the source and destination directories
SOURCE_DIR=/etc/nixos/
DEST_DIR=~/dotfiles-nixos-hyprland/nixos/

# Use rsync to copy and synchronize the contents
rsync -av --delete "$SOURCE_DIR" "$DEST_DIR"

# Print a message indicating the process is complete
echo "Synchronization and copy complete from $SOURCE_DIR to $DEST_DIR"

###############################################
