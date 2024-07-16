{ config, pkgs, ... }:
{
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    wget
    curl
    git
    rsync
    bind
    pciutils
    lshw
    coreutils-full
    procps
    util-linux
    alsa-utils 
    htop
  ];
}
