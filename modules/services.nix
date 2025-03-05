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

  swapDevices = [ {
    device = "/dev/zram";
    size = 16*1024;
  } ];

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
          ${pkgs.ryzenadj}/bin/ryzenadj -a 28000 -b 32000 -c 30000 -f 90
        '';
        wantedBy = [ "multi-user.target" ];
        serviceConfig = {
          Type = "oneshot";
        };
      };
    };
    user = {
      services = {
        warp-taskbar = {
          enable = lib.mkForce false;
        };
      };
    };
  };
}
