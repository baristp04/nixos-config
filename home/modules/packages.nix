{ pkgs, ... }:
{
  home.packages = with pkgs; [
    spotify
    protonup-qt
    discord
    vesktop
    mangohud
    mangojuice
    jamesdsp
    qbittorrent
    zapzap
    cloudflare-warp
    neofetch
    vlc
    jdk17
    telegram-desktop
    dmidecode
    _4d-minesweeper
    kitty
  ];
}
