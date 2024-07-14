{ config, pkgs, ... }: 
{
  # X11 and wayland services
  services.xserver.enable = true;

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };
}
