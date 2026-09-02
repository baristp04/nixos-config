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
    hardware.openrgb.enable = true;
    postgresql = {
    enable = true;
    ensureDatabases = [ "mydatabase" ];
    authentication = pkgs.lib.mkOverride 10 ''
      #type database  DBuser  auth-method
      local all       all     trust
    '';
  };
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
          ${pkgs.ryzenadj}/bin/ryzenadj -a 45000 -b 54000 -c 45000 -f 95
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
