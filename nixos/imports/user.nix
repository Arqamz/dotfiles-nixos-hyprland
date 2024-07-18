{ config, pkgs, ... }:

let
    ags = pkgs.ags.overrideAttrs (prev: {
    buildInputs = prev.buildInputs ++ [ pkgs.libdbusmenu-gtk3 ];
    });
in
{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.arqqm = {
    isNormalUser = true;
    description = "Arqam Zia";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
        # Hyprland related packages
        # Wayland compositor
        hyprland
        # Wallpaper and Material U theme maker - Write your own scripts to hot change themes
        hyprpaper swww matugen
        # Color picker for Hyprland
        hyprpicker
        # Cursor manager for Hyprland
        hyprcursor
        # Idle manager for Hyprland
        hypridle
        # Screen locker for Hyprland
        hyprlock

        #Simple terminal UI for git commands
        lazygit
        # File manager
        xfce.thunar
	# Terminal multiplexer
	tmux
	# Ghosttty in the future
        # GPU-accelerated terminal emulator
        kitty
        # Terminal emulator
        alacritty
        # Minimalistic Wayland terminal emulator
        foot
        # Window switcher, application launcher, and dmenu replacement and Ulauncher(add extensions)
        rofi ulauncher
        # Highly customizable Wayland bar
        waybar ags #add quickshell
        # System information tool
        neofetch
        # Fast system information tool
        fastfetch
        # Terminal multiplexer
        tmux
        # Count lines of code
        cloc
        
        # JavaScript runtime
        bun
        # Dart implementation of Sass
        dart-sass
        # Simple, fast and user-friendly alternative to 'find'
        fd
        # Utility to control brightness
        brightnessctl

        # Command-line fuzzy finder
        fzf
        # Screenshot utility for Wayland
        grimblast grim slurp swappy #hyprshot
        # Screen recording tool for Wayland
        wf-recorder obs-studio
        # Wayland clipboard utilities
        wl-clipboard
        
        # GTK+ widget for source code editing
        gtksourceview
        # Web content engine for GTK+
        webkitgtk
        # D-Bus interface for user account query and manipulation
        accountsservice
        # GNU version of AWK programming language
        gawk
        # Line-oriented search tool
        ripgrep
        # GNOME control center
        gnome.gnome-control-center
        # Performance and Task manager (similiar UI to windows)
        mission-center
        # Bluetooth window tool
        overskride
        # Icons to logout suspend hibernate
        wlogout
        # Compression |  Decompression utility
	zip unzip
        # Password store (with menu for Wayland)
        pass-wayland
        # GNU Privacy Guard
        gnupg
        # Pin-entry curses interface
        pinentry-curses
        # Wayland event viewer (check key IDs)
        wev
        # Display bandwidth usage on an interface
        iftop nvtopPackages.intel
        # Network protocol analyzer
        wireshark
        # Interactive HTTPS proxy
        mitmproxy
        # Network protocol analyzer (CLI)
        tshark
        # Command-line packet analyzer
        tcpdump
        # Terminal file manager
        yazi

        # Browsers
        # Browser designed for power users
        nyxt
        # Text-based web browser
        lynx
        # Web browser
        firefox
        # Web browser
        google-chrome

        # Services
        # A minimalistic login manager
        greetd.tuigreet
        # Greetd login daemon
        greetd.greetd

        # Miscellaneous tools
        # Terminal clock
        tty-clock
        # Terminal-based journal
        tui-journal
        # Task manager
        dooit
        # CLI for ChatGPT
        chatgpt-cli
        # Cat clone with syntax highlighting
        bat
        # File manager
        superfile
        # Ping with a graph
        gping
        # Real-time web log analyzer
        goaccess

        # Editors and IDEs
        neovim
	# Visual Studio Code
        vscode
        # Extensions for Visual Studio Code
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



        # Fun/Useless stuff
        # Bonsai tree generator
        cbonsai
        # Terminal-based pipes screensaver
        pipes-rs
        # The Matrix in your terminal
        cmatrix
        # Rainbow text generator
        lolcat
        # Configurable talking cow
        cowsay
        # Terminal-based coin tracker
        cointop
        # Music streaming service
        spotify
        # Chat for communities
        discord
        # Console-based audio visualizer
        cava
    ];
  };
}
