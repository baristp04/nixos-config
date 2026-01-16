{...}:
{
  services.httpd.enable = true;
  networking.firewall.allowedTCPPorts = [ 80 443 ];
}