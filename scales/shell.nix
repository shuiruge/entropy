# shell.nix

with import <nixpkgs> { };
let
  pythonPackages = python3Packages;
in pkgs.mkShell rec {
  name = "tensorflowEnv";
  buildInputs = [
    pythonPackages.python
    pythonPackages.matplotlib
    pythonPackages.numpy
    pythonPackages.pandas
    pythonPackages.scipy
    pythonPackages.scikit-learn
    pythonPackages.keras
    pythonPackages.tensorflow
    pythonPackages.jupyter
    pythonPackages.tqdm
  ];
}
