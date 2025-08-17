{pkgs, ...}: {
  fonts = {
    enableDefaultPackages = true;

    packages = with pkgs; [
      noto-fonts
      ubuntu_font_family
      unifont
      noto-fonts-cjk-sans
      carlito
    ];

    fontconfig = {
      antialias = true;
      defaultFonts = {
        serif = ["Ubuntu"];
        sansSerif = ["Ubuntu"];
        monospace = ["Ubuntu Source"];
      };
    };
  };
}