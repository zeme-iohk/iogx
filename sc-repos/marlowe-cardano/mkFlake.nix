{ iogx-inputs }: 

let 
  flake = iogx-inputs.self.mkFlake {
    inputs = { self = flake; };
    repoRoot = iogx-inputs.marlowe-cardano;
    shellName = "marlowe-cardano";
  };
in 
  flake