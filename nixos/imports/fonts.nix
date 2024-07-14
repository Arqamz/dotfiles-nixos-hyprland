{ config, pkgs, ... }: 
{
  fonts.packages = with pkgs; [
    font-awesome
  ];
}
