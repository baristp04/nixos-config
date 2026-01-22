{pkgs, ...}:
{
systemd.services.byedpi = {
description = "byedpi";
wantedBy = [ "multi-user.target" ];
after = [ "network.target" ];
serviceConfig = {
Type = "simple";
ExecStart = "${pkgs.byedpi}/bin/ciadpi --fake -1 --ttl 8";
Restart = "always";
};
};
}