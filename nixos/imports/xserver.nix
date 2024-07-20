{ config, pkgs, ... }: 
{
  # X11 and wayland services
  services.xserver.enable = true;

  services.xserver.videoDrivers = [ "amdgpu" ];


  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };
}
