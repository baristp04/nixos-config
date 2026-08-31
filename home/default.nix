{ config, pkgs,inputs, ... }:
{

  imports = [
    ./modules
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
    stateVersion = "26.11";
  };

  programs.home-manager.enable = true;

}
