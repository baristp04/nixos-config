{
  lib,
  pkgs,
  inputs,
  ...
}:
{
  users.users.btepe = {
    isNormalUser = true;
    description = "Barış Tepe";
    extraGroups = [
      "networkmanager"
      "wheel"
      "gamemode"
    ];
    shell = pkgs.zsh;
    packages = with pkgs; [
      kdePackages.kate
      #  thunderbird
    ];
  };
}
