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

  system.stateVersion = "25.11";

}
