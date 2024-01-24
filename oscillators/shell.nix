# shell.nix

with import <nixpkgs> { };
let
  pythonPackages = python3Packages;
in pkgs.mkShell rec {
  name = "tensorflowEnv";
  venvDir = "./.venv";
  buildInputs = [

    # A python interpreter including the 'venv' module is required to bootstrap
    # the environment.
    pythonPackages.python

    # This execute some shell code to initialize a venv in $venvDir before
    # dropping into the shell
    pythonPackages.venvShellHook

    pythonPackages.matplotlib
    pythonPackages.numpy
    pythonPackages.scipy
    pythonPackages.tensorflow
    pythonPackages.jupyter
    pythonPackages.tqdm
  ];

  # Now we can execute any commands within the virtual environment.
  postShellHook = ''
   # Run pip.
    pip install git+https://github.com/shuiruge/energymodel.git
  '';

}
