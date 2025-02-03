{ config, pkgs, ... }:
{
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
