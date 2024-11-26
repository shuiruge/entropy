# shell.nix
with import <nixpkgs> { };
let
  pythonPackages = python3Packages;
in pkgs.mkShell rec {
  name = "testEnv";
  buildInputs = [
    pythonPackages.python
    pythonPackages.numpy
    pythonPackages.ipykernel
  ];
}
