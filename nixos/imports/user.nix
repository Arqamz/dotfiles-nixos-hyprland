{ config, pkgs, ... }: 
{
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

  # ZSH OH-MY-ZSH P10K Terminal Customisation
  programs.zsh.enable = true;
}
