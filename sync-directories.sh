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
#Home Manager
###############################################

# # Define the source and destination directories
# SOURCE_DIR=~/.config/nvim/
# DEST_DIR=~/dotfiles-nixos-hyprland/nvim/

# # Use rsync to copy and synchronize the contents
# rsync -av --delete "$SOURCE_DIR" "$DEST_DIR"

# # Print a message indicating the process is complete
# echo "Synchronization and copy complete from $SOURCE_DIR to $DEST_DIR"

###############################################
#Hyprland
###############################################

# Define the source and destination directories
SOURCE_DIR=~/.config/hypr/
DEST_DIR=~/dotfiles-nixos-hyprland/hypr/

# Use rsync to copy and synchronize the contents
rsync -av --delete "$SOURCE_DIR" "$DEST_DIR"

# Print a message indicating the process is complete
echo "Synchronization and copy complete from $SOURCE_DIR to $DEST_DIR"

###############################################
#Waybar
###############################################

# Define the source and destination directories
SOURCE_DIR=~/.config/waybar/
DEST_DIR=~/dotfiles-nixos-hyprland/waybar/

# Use rsync to copy and synchronize the contents
rsync -av --delete "$SOURCE_DIR" "$DEST_DIR"

# Print a message indicating the process is complete
echo "Synchronization and copy complete from $SOURCE_DIR to $DEST_DIR"

###############################################
#NVIM
###############################################

# Define the source and destination directories
SOURCE_DIR=~/.config/nvim/
DEST_DIR=~/dotfiles-nixos-hyprland/nvim/

# Use rsync to copy and synchronize the contents
rsync -av --delete "$SOURCE_DIR" "$DEST_DIR"

# Print a message indicating the process is complete
echo "Synchronization and copy complete from $SOURCE_DIR to $DEST_DIR"

###############################################
#Kitty
###############################################

# Define the source and destination directories
SOURCE_DIR=~/.config/kitty/
DEST_DIR=~/dotfiles-nixos-hyprland/kitty/

# Use rsync to copy and synchronize the contents
rsync -av --delete "$SOURCE_DIR" "$DEST_DIR"

# Print a message indicating the process is complete
echo "Synchronization and copy complete from $SOURCE_DIR to $DEST_DIR"

###############################################
#Alacritty
###############################################

# Define the source and destination directories
SOURCE_DIR=~/.config/alacritty/
DEST_DIR=~/dotfiles-nixos-hyprland/nvim/

# Use rsync to copy and synchronize the contents
rsync -av --delete "$SOURCE_DIR" "$DEST_DIR"

# Print a message indicating the process is complete
echo "Synchronization and copy complete from $SOURCE_DIR to $DEST_DIR"