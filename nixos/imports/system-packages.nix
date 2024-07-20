{ config, pkgs, ... }:
{
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    lact #amd gpu
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
    nvtopPackages.intel
    nvtopPackages.amd
  ];
}
