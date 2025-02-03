{
  lib,
  pkgs,
  inputs,
  ...
}:
{
  services = {
    printing.enable = true;
    cloudflare-warp.enable = true;
  };

  zramSwap = {
    enable = true;
  };

  system = {
    autoUpgrade = {
      enable = true;
      dates = "weekly";
    };

  };

  systemd = {
    services = {
      startup = {
        script = ''
          ${pkgs.ryzenadj}/bin/ryzenadj -a 35000 -b 40000 -c 30000 -f 90
        '';
        wantedBy = [ "multi-user.target" ];
        serviceConfig = {
          Type = "oneshot";
        };
      };
    };
  };
}
