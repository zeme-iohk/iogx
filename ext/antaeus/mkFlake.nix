{ iogx-inputs }:

let
  flake = iogx-inputs.self.mkFlake {
    inputs = {};
    repoRoot = iogx-inputs.antaeus;
    haskellProjectFile = import ./nix/haskell-project.nix;
    shellName = "antaeus";
    # haskellCrossSystem = "x86_64-linux";
  };
in
flake
