# shell.nix

with import <nixpkgs> { };
let
  pythonPackages = python311Packages;
in pkgs.mkShell rec {
  name = "pythonEnv";
  buildInputs = [
    pythonPackages.python
    pythonPackages.matplotlib
    pythonPackages.keras
    pythonPackages.tensorflow
    pythonPackages.jupyter
    pythonPackages.tqdm
  ];
}
