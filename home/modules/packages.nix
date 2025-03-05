{ pkgs,inputs, ... }:
let
  system = "x86_64-linux";
  pkgsStable = inputs.nixpkgsStable.legacyPackages.${system};
in
{
  home.packages = with pkgs; [
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
    spotify
    pciutils
    pcsx2
    wev
    usbutils
  ];
}
