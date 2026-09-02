{inputs, pkgs,...}:
{
  programs.spicetify =
let
  spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.stdenv.hostPlatform.system};
in
{
  enable = true;

  enabledExtensions = with spicePkgs.extensions; [
    adblock
    shuffle # shuffle+ (special characters are sanitized out of extension names)
  ];
  enabledCustomApps = with spicePkgs.apps; [
    newReleases
  ];
  enabledSnippets = with spicePkgs.snippets; [
    pointer
  ];

  theme = spicePkgs.themes.sleek;
  colorScheme = "Greener";
};
}