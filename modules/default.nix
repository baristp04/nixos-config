{ lib, config, pkgs, inputs, ... }:
{
  imports = [
    ./boot.nix
    ./hardware-configuration.nix
    ./nvidia.nix
    ./nix.nix
    ./services.nix
    ./display.nix
    ./hardware.nix
    ./programs.nix
    ./network.nix
    ./audio.nix
    ./users.nix
    ./locales.nix
    ./fonts.nix
    ./virtualbox.nix
  ];
}