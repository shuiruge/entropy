# shell.nix

with import <nixpkgs> { };
let
  pythonPackages = python3Packages;
in pkgs.mkShell rec {
  name = "oscillators";
  buildInputs = [
    pythonPackages.python
    pythonPackages.matplotlib
    pythonPackages.pandas
    pythonPackages.seaborn
    pythonPackages.numpy
    pythonPackages.scipy
    pythonPackages.tensorflow
    pythonPackages.jupyter
  ];

}
