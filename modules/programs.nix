{ pkgs, inputs, ... }:
{
  programs = {
    virt-manager.enable = true;
    corectrl.enable = true;
    firefox.enable = true;
    direnv.enable = true;
    partition-manager.enable = true;
    htop.enable = true;
    kdeconnect.enable = true;
    steam = {
      enable = true;
      remotePlay.openFirewall = true;
      dedicatedServer.openFirewall = true;
    };
    gamemode.enable = true;
    gamescope.enable = true;
    zsh.enable = true;
    hyprland.enable = true;
    java = {
    enable = true;
  };
  };

  environment.systemPackages = with pkgs; [
    ryzenadj
    nixfmt
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
    byedpi
    inputs.envycontrol
    virt-manager
    antigravity-ide
  ];

  environment.plasma6.excludePackages = with pkgs.kdePackages; [ drkonqi ];

  services.udev.packages = with pkgs; [rivalcfg];
}


