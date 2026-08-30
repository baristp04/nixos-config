{ pkgs,inputs, ... }:
let
  system = "x86_64-linux";
  pkgsStable = inputs.nixpkgsStable.legacyPackages.${system};
in
{
  home.packages = with pkgs; [
    discord
    vesktop
    mangojuice
    jamesdsp
    qbittorrent
    cloudflare-warp
    fastfetch
    vlc
    jdk17
    telegram-desktop
    dmidecode
    _4d-minesweeper
    kitty
    pciutils
    pcsx2
    wev
    usbutils
    inputs.zen-browser.packages."${system}".twilight
    #(librewolf.override {nativeMessagingHosts = [pkgs.kdePackages.plasma-browser-integration];})
    kdePackages.kcalc
    protontricks
    kdePackages.filelight
    kdePackages.plasma-nm
    wget
    #anki
    pear-desktop
    rar
    mars-mips
    steamtinkerlaunch
    nicotine-plus
    tauon
    dopamine
    picard
    nero-umu
    onlyoffice-desktopeditors
    marksman
    spicetify-cli
    openrgb
    ppsspp
    proton-vpn
    galaxy-buds-client
    kazam
    zoom-us
    appimage-run
    slack
    opencode
    devenv
    protonup-qt
  ];
}
