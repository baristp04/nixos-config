{ config, pkgs,inputs, ... }:
{

  imports = [
    ./modules
    ./hyprland
    inputs.spicetify-nix.homeManagerModules.default
  ];

  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };

  home = {
    username = "btepe";
    homeDirectory = "/home/btepe";
    stateVersion = "24.11";
  };

  programs.home-manager.enable = true;

}
