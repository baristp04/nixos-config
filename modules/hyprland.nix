{ inputs, pkgs, ... }:
{
  programs = {
    hyprland.enable = true;
    nvidiaPatches.enable = true;
    xwayland.enable = true;
  };

  envorinment = {
    sessionVariables = {
      NIXOS_OZONE_WL = "1";
    };

    systemPackages = with pkgs; [
      (waybar.overrideAttrs (oldAttrs: {
    mesonFlags = oldAttrs.mesonFlags ++ [ "-Dexperimental=true" ];
  })
    mako
    libnotify
    swww
    rofi-wayland
)
    ]
  };

  hardware = {
    opengl.enable = true;
    nvidia.modesetting.enable = true;
  };

  xdg = {
    portal = {
      enable = true;
      extraPortals = [pkgs.xdg-desktop-portal-gtk];
    };
  };

  sound.enable = true;
  security.rtkit.enable = true;
  services.pipewire = {
  enable = true;
  alsa.enable = true;
  alsa.support32Bit = true;
  pulse.enable = true;
  jack.enable = true;
};

}
