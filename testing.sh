#!/run/current-system/sw/bin/bash


SOURCE_DIR=~/.config/nvim/
DEST_DIR=~/dotfiles-nixos-hyprland/nvim/

# Use rsync to copy and synchronize the contents
rsync -av --progress --delete "$SOURCE_DIR" "$DEST_DIR"

# Print a message indicating the process is complete
echo "Synchronization and copy complete from $SOURCE_DIR to $DEST_DIR"