{ config, pkgs, ... }:
let
  mesloBoldItalic = pkgs.stdenv.mkDerivation {
    name = "meslo-bold-italic";
    src = /usr/share/fonts/custom/MesloLGS_NF_Bold_Italic.ttf;
    installPhase = ''
      mkdir -p $out/share/fonts/truetype
      cp $src $out/share/fonts/truetype/
    '';
    dontUnpack = true;
  };

  mesloItalic = pkgs.stdenv.mkDerivation {
    name = "meslo-italic";
    src = /usr/share/fonts/custom/MesloLGS_NF_Italic.ttf;
    installPhase = ''
      mkdir -p $out/share/fonts/truetype
      cp $src $out/share/fonts/truetype/
    '';
    dontUnpack = true;
  };

  mesloBold = pkgs.stdenv.mkDerivation {
    name = "meslo-bold";
    src = /usr/share/fonts/custom/MesloLGS_NF_Bold.ttf;
    installPhase = ''
      mkdir -p $out/share/fonts/truetype
      cp $src $out/share/fonts/truetype/
    '';
    dontUnpack = true;
  };

  mesloRegular = pkgs.stdenv.mkDerivation {
    name = "meslo-regular";
    src = /usr/share/fonts/custom/MesloLGS_NF_Regular.ttf;
    installPhase = ''
      mkdir -p $out/share/fonts/truetype
      cp $src $out/share/fonts/truetype/
    '';
    dontUnpack = true;
  };
in
{
  fonts.packages = with pkgs; [
    font-awesome
    (nerdfonts.override { fonts = [ "FiraCode" "DroidSansMono"]; })
    mesloBoldItalic
    mesloItalic
    mesloBold
    mesloRegular
  ];
}
