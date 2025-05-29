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
    inputs.zen-browser.packages."${system}".twilight
    #(librewolf.override {nativeMessagingHosts = [pkgs.kdePackages.plasma-browser-integration];})
    kdePackages.kcalc
    protontricks
    kdePackages.filelight
    wget
    rpcs3
    anki
    youtube-music
    rar
    mars-mips
    steamtinkerlaunch
    nicotine-plus
    google-chrome
  ];
}
