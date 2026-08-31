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

  system.stateVersion = "26.11";

}
