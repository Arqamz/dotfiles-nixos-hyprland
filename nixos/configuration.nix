# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }: 
let 
  ags = pkgs.ags.overrideAttrs (_: prev: {
    buildInputs = prev.buildInputs ++ [pkgs.libdbusmenu-gtk3];
  });
in{
  # Enable sound with pipewire.
  sound.enable = true;
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
  };
  
  # X11 and wayland services
  services.xserver.enable = true;

  # Set light DM to start hyprland
  # services.xserver.displayManager.lightdm.enable = true;

  # Greetd - TUIGreet
  


  # gnupg
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
#    pinentryPackage = "curses";
  };
  services.pcscd.enable = true;


  # Fix .defaultSession = "hyprland";

  #Window Manager Hyprland
  programs.hyprland = {
	enable = true;
	xwayland.enable = true;
  };

  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
#      ./modules/packages.nix
#      ./modules/waybar.nix
    ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "asylum"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Asia/Karachi";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_GB.UTF-8";
    LC_IDENTIFICATION = "en_GB.UTF-8";
    LC_MEASUREMENT = "en_GB.UTF-8";
    LC_MONETARY = "en_GB.UTF-8";
    LC_NAME = "en_GB.UTF-8";
    LC_NUMERIC = "en_GB.UTF-8";
    LC_PAPER = "en_GB.UTF-8";
    LC_TELEPHONE = "en_GB.UTF-8";
    LC_TIME = "en_GB.UTF-8";
  };

  # Configure keymap in X11
  services.xserver = {
    layout = "us";
    xkbVariant = "";
  };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.arqqm = {
    isNormalUser = true;
    description = "Arqam Zia";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
	google-chrome
	spotify
	discord
	cava
   ];
  };

  fonts.packages = with pkgs; [
    font-awesome
  ];

  # ZSH OH-MY-ZSH P10K Terminal Customisation

  programs.zsh.enable = true;


  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # i need to fix this messy file so bad

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
	#  vim 
	# Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
	wget
	
	#Hypr
	hyprland
	hyprpaper
	hyprpicker
	hyprcursor
	hypridle
	hyprlock
	
	# Git
	git
	lazygit
	
	# File Manager
	xfce.thunar

	# Terminal Emulator
	kitty
	alacritty
	
	# Application Launcher
	rofi
	
	# Panel/Dock
	waybar

	# Display Manager
	lightdm

	# Application Manager
	ulauncher

	# NeoVim
	neovim

	# Curl
	curl

	# I need to move and sort all of this fr
	neofetch
	fastfetch
	tmux

	cloc

	# AGS Bar and dependencies
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
        
	# Fufexan config	
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
	
	#pass
	pass-wayland
	gnupg	
	#	pinentry-tty
	pinentry-curses
	#	pinentry-gtk2

	wev
	#xev
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

	#RandomStuff or games
	cbonsai
	cointop


	# Home-manager 
	home-manager

	# lf
	lf
	
	alsa-utils
	pavucontrol

	#Chrome and Firefox
	firefox
	google-chrome

	#FONT
	font-awesome
	nerdfonts 
	
	# Vscode
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
];

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.05"; # Did you read the comment?

}
