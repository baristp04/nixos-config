{ pkgs, inputs, ... }:
{
  programs = {
    corectrl.enable = true;
    firefox.enable = true;
    direnv.enable = true;
    partition-manager.enable = true;
    htop.enable = true;
    kdeconnect.enable = true;
    steam = {
      enable = true;
      extraCompatPackages = with pkgs; [
        proton-ge-bin
      ];
      remotePlay.openFirewall = true;
      dedicatedServer.openFirewall = true;
    };
    gamemode.enable = true;
    gamescope.enable = true;
    zsh.enable = true;
    hyprland.enable = true;
  };

  environment.systemPackages = with pkgs; [
    ryzenadj
    nixfmt-rfc-style
    nixd
    easyeffects
    vscodium.fhs
    nvtopPackages.full
    home-manager
    git
    (python3.withPackages (p: with p; [pynvml]))
    amdctl
    gnome-mines
    gparted
    rivalcfg
    wine
  ];

  environment.plasma6.excludePackages = with pkgs.kdePackages; [ drkonqi ];

  services.udev.packages = with pkgs; [rivalcfg];
}


