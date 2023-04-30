{ iogx-inputs }:

let
  flake = iogx-inputs.self.mkFlake {
    inputs = { self = flake; };
    repoRoot = iogx-inputs.marlowe-cardano;
    shellName = "marlowe-cardano";
    shellModule = import ./nix/shell-module.nix; 
    haskellProjectFile = import ./nix/haskell-project.nix; 
    perSystemOutputs = import ./nix/per-system-outputs.nix; 
  };
in
flake
