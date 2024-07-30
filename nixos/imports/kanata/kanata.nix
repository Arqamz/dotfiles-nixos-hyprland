{ config, pkgs, ... }: 
{
    services.kanata = {
       enable = true;
       keyboards.allKeyboards = {
         config = builtins.readFile (./. + "/main.kbd");
       };
    };
}
