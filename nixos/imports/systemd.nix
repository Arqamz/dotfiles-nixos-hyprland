{ config, pkgs, ... }: 
{
   systemd.services.lactd = {
    description = "AMDGPU Control Daemon";
    enable = true;  
    serviceConfig = {
      ExecStart = "${pkgs.lact}/bin/lact daemon";
    };
    wantedBy = ["multi-user.target"];
  };
}


 
