{ config, pkgs, ... }: 
{
  # Boot configuration
  boot = {
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
    };
    initrd = {
      verbose = false;
      kernelModules = ["amdgpu"];
    };
    plymouth = {
      enable = true;
      theme = "breeze";
    };
    kernelModules = ["amdgpu"];
    kernelParams = [ "quiet" "udev.log_level=0" "radeon.si_support=0" "amdgpu.si_support=1" ];
  };
}
