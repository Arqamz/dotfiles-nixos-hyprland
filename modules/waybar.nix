{ config, pks, ... }:

{
  systemd.user.services.waybar = {
    enable = true;
    description = "Waybar status bar";
  };
}
