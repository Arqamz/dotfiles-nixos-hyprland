# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }: 
{
  imports =
    [ # Include the results of the hardware scan.
      ./imports/hardware-configuration.nix
      ./imports/sound.nix
      ./imports/gnupg.nix
      ./imports/xserver.nix
      ./imports/hypr.nix
      ./imports/networking.nix
      ./imports/locales.nix
      ./imports/user.nix
      ./imports/fonts.nix
      ./imports/packages.nix
      ./imports/system-config.nix
    ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Set your time zone.
  time.timeZone = "Asia/Karachi";

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.05"; # Did you read the comment?
}
