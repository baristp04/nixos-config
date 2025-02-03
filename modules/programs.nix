{ pkgs, inputs, ... }:
{
  programs = {
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
  };

  environment.systemPackages = with pkgs; [
    ryzenadj
    protonup-qt
    mangohud
    bottles
    mangojuice
    nixfmt-rfc-style
    nixd
    easyeffects
    vscodium.fhs
    vesktop
    discord
    protonvpn-gui
    librewolf
    spotify
    cloudflare-warp
    home-manager
    git
  ];
}
