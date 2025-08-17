{ lib, inputs, ... }:
{
  networking = {
    hostName = "nixos"; 
    networkmanager.enable = true;
  };
}
