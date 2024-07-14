{ config, pkgs, ... }: 
{
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
#    pinentryPackage = "curses";
  };
  services.pcscd.enable = true;
}
