{ config, pkgs, ... }: 
{
  # Window Manager Hyprland
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };
}
