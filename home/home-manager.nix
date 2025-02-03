{ config, pkgs, ... }:

{

  imports = [
    ./configurations
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
    packages = with pkgs; [
      git
    ];
  };
  programs = {
    home-manager.enable = true;
    git = {
      enable = true;
      userName = "baristp04";
      userEmail = "baristepe2004@yandex.com";
    };
  };
}
