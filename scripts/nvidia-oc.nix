{pkgs ? import <nixpkgs> {}}:
pkgs.mkShell {
  packages = [pkgs.python3 pkgs.python3Packages.nvidia-ml-py];

  shellHook = ''
    python3 /home/btepe/System/scripts/nvidia-oc.py
    exit
  '';
}