{
  config,
  pkgs,
  inputs,
  ...
}:

{
  imports = [
    ./modules
  ];

  system.stateVersion = "24.11";

}
