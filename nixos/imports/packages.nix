{ config, pkgs, ... }:

let
  ags = pkgs.ags.overrideAttrs (prev: {
    buildInputs = prev.buildInputs ++ [ pkgs.libdbusmenu-gtk3 ];
  });
  thunarWithPlugins = pkgs.xfce.thunar.overrideAttrs (old: {
    buildInputs = old.buildInputs ++ [ pkgs.xfce.thunar-archive-plugin ];
  });
in
{
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    wget
    hyprland
    hyprpaper
    hyprpicker
    hyprcursor
    hypridle
    hyprlock
    git
    lazygit
    thunarWithPlugins
    kitty
    alacritty
    foot
    rofi
    waybar
    ulauncher
    neovim
    curl
    neofetch
    fastfetch
    tmux
    cloc
    ags
    bun
    dart-sass
    fd
    brightnessctl
    swww
    matugen
    fzf
    slurp
    wf-recorder
    wl-clipboard
    wayshot
    swappy
    gtksourceview
    webkitgtk
    accountsservice
    bash
    coreutils
    gawk
    imagemagick
    procps
    ripgrep
    util-linux
    gnome.gnome-control-center
    mission-center
    overskride
    wlogout
    zip
    unzip
    pass-wayland
    gnupg
    pinentry-curses
    wev
    iftop
    wireshark
    mitmproxy
    tshark
    tcpdump
    yazi
    nyxt
    greetd.tuigreet
    greetd.greetd
    tty-clock
    tui-journal
    dooit
    chatgpt-cli
    bat
    superfile
    gping
    goaccess
    nchat
    lynx
    home-manager
    lf
    alsa-utils
    pavucontrol
    firefox
    google-chrome
    vscode
    (vscode-with-extensions.override {
      vscodeExtensions = with vscode-extensions; [
        bbenoist.nix
        ms-python.python
        ms-azuretools.vscode-docker
        ms-vscode-remote.remote-ssh
      ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
        {
          name = "remote-ssh-edit";
          publisher = "ms-vscode-remote";
          version = "0.47.2";
          sha256 = "1hp6gjh4xp2m1xlm1jsdzxw9d8frkiidhph6nvl24d0h8z34w49g";
        }
      ];
    })
    cbonsai
    pipes-rs
    cmatrix
    lolcat
    cowsay
    cointop
    
  ];
}
