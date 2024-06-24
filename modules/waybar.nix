<<<<<<< HEAD
{ config, pks, ... }:
=======
{ config, pkgs, ... }:
>>>>>>> 0ef0dc1 (Modularising 2)

{
  systemd.user.services.waybar = {
    enable = true;
    description = "Waybar status bar";
<<<<<<< HEAD
  };
=======
    after = [ "graphical-session.target" ];
    serviceConfig = {
      ExecStart = "${pkgs.waybar}/bin/waybar";
      Restart = "always";
    };
    wantedBy = [ "default.target" ];
  };

  xdg.configFile."waybar/config".text = ''
    {
      "layer": "top",
      "modules-left": ["custom/launcher", "cpu", "memory", "custom/media", "tray"],
      "modules-center": ["hyprland/workspaces"],
      "modules-right": ["custom/updates", "custom/wallpaper", "backlight", "pulseaudio", "clock", "battery", "custom/power"],
      
      "pulseaudio": {
        "tooltip": false,
        "scroll-step": 5,
        "format": "{icon} {volume}%",
        "format-muted": "{icon} {volume}%",
        "on-click": "pactl set-sink-mute @DEFAULT_SINK@ toggle",
        "format-icons": {
          "default": ["", "", ""]
        }
      },

      "hyprland/workspaces": {
        "format": "{name}",
        "tooltip": false
      },

      "network": {
        "tooltip": false,
        "format-wifi": "  {essid}",
        "format-ethernet": ""
      },

      "backlight": {
        "tooltip": false,
        "format": " {}%",
        "interval": 1,
        "on-scroll-up": "light -A 5",
        "on-scroll-down": "light -U 5"
      },

      "battery": {
        "states": {
          "good": 95,
          "warning": 30,
          "critical": 20
        },
        "format": "{icon}  {capacity}%",
        "format-charging": " {capacity}%",
        "format-plugged": " {capacity}%",
        "format-alt": "{time} {icon}",
        "format-icons": ["", "", "", "", ""]
      },

      "tray": {
        "icon-size": 18,
        "spacing": 10
      },

      "clock": {
        "format": "{: %I:%M %p   %d/%m/%Y}"
      },

      "cpu": {
        "interval": 15,
        "format": " {}%",
        "max-length": 10
      },

      "memory": {
        "interval": 30,
        "format": " {}%",
        "max-length": 10
      },

      "custom/media": {
        "interval": 30,
        "format": "{icon} {}",
        "return-type": "json",
        "max-length": 20,
        "format-icons": {
          "spotify": " ",
          "default": " "
        },
        "escape": true,
        "exec": "$HOME/.config/system_scripts/mediaplayer.py 2> /dev/null",
        "on-click": "playerctl play-pause"
      },

      "custom/launcher": {
        "format": " ",
        "on-click": "ulauncher-toggle",
        "on-click-right": "pkill ulauncher"
      },

      "custom/power": {
        "format": " ",
        "on-click": "bash ~/.config/rofi/leave/leave.sh"
      },

      "custom/updates": {
        "format": "{} Update(s)",
        "exec": "checkupdates | wc -l",
        "exec-if": "[[ $(checkupdates | wc -l) != 0 ]]",
        "interval": 15,
        "on-click": "alacritty -e paru -Syu && notify-send 'The system has been updated'"
      },

      "custom/wallpaper": {
        "format": " ",
        "on-click": "bash ~/.config/system_scripts/pkill_bc"
      }
    }
  '';
>>>>>>> 0ef0dc1 (Modularising 2)
}
