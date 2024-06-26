{ config, pkgs, ... }:

{
	nixpkgs.config.allowUnfree = true;
	
	environment.systemPackages = with pkgs; [

		git
	
		kitty
		alacritty
		
		xfce.thunar
		
		rofi
		ulauncher
		
		waybar

		hyprland
	
		lightdm
		
		neovim
		gedit
		vscode
		(vscode-with-extensions.override {
			vscodeExtensions = with vscode-extensions; [
				bbenoist.nix
				ms-python.python
				ms-azuretools.vscode-docker
				ms-vscode-remote.remote-ssh
			]	++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
				{
					name = "remote-ssh-edit";
					publisher = "ms-vscode-remote";
					version = "0.47.2";
					sha256 = "1hp6gjh4xp2m1xlm1jsdzxw9d8frkiidhph6nvl24d0h8z34w49g";
				}
			];
		})

		home-manager

		google-chrome	

		curl
	
		alsa-utils
		pavucontrol
		player ctl
		pulseaudio
		libnotify
		
	];
}
