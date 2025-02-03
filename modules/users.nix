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
    packages = with pkgs; [
      kdePackages.kate
      #  thunderbird
    ];
  };
}
