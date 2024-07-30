# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }: 
{
  imports =
    [ # Include the results of the hardware scan.
      ./imports/boot.nix
      ./imports/hardware-configuration.nix
      ./imports/systemd.nix
      ./imports/command-shell.nix
      ./imports/display-manager.nix
      ./imports/sound.nix
      ./imports/gnupg.nix
      ./imports/xserver.nix
      ./imports/hypr.nix
      ./imports/networking.nix
      ./imports/locales.nix
      ./imports/user.nix
      ./imports/fonts.nix
      ./imports/system-packages.nix
      ./imports/system-services.nix
    ];
 
  # Set your time zone.
  time.timeZone = "Asia/Karachi";

  # For flakes and nix-commands
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Set zsh as default shell for all users
  users.defaultUserShell = pkgs.zsh;

  # Hardware config (modularise this still)
  hardware.opengl = {
    enable = true;
    driSupport = true;
    driSupport32Bit = true;
    extraPackages = with pkgs; [
      amdvlk

      # mesa
      mesa

      # vulkan
      vulkan-tools
      vulkan-loader
      vulkan-validation-layers
      vulkan-extension-layer
    ];
  };


  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.05"; # Did you read the comment?
}
