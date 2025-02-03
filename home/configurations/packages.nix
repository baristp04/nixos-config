{ pkgs,... }:
{
  home.packages = with pkgs; [
    spotify
    protonup-qt
    discord
    vesktop
  ];
}
