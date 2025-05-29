{...}: let
  aliases = {
    cleanup = "
      sudo nix-collect-garbage -d
      nix-collect-garbage -d
    ";
    rebuild = "sudo nixos-rebuild switch --flake ~/System";
    rebuildBoot = "sudo nixos-rebuild boot --flake ~/System";
    fullRebuild = "sudo nixos-rebuild switch --flake ~/System";
    fullRebuildBoot = "sudo nixos-rebuild boot --flake ~/System";
    homeRebuild = "home-manager switch --flake ~/System ";
    flakeUpdate = "sudo nix flake update --flake ~/System";
  };
in {
  programs = {
    zsh = {
      enable = true;
      autosuggestion.enable = true;
      syntaxHighlighting.enable = true;
      shellAliases = aliases;
      history = {
        expireDuplicatesFirst = true;
        ignoreAllDups = true;
      };
      oh-my-zsh = {
        enable = true;
        plugins = [
          "git"
          "history"
          "wd"
        ];
      };
    };
  };
}