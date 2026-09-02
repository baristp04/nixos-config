{ lib, inputs, ... }:
{
  services.httpd.enable = true;
  networking = {
    hostName = "nixos"; 
    networkmanager.enable = true;
    firewall.allowedTCPPorts = [ 80 443 ];
  };
}
