{ pkgs, ... }:
{
  home.packages = with pkgs; [
    spotify
    protonup-qt
    discord
    vesktop
    mangohud
    jamesdsp
    qbittorrent
    zapzap
    cloudflare-warp
    neofetch
    python312Full
    vlc
  ];
}
