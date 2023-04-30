{ iogx-inputs }: 

let 
  flake = iogx-inputs.self.mkFlake {
    inputs = { self = flake; };
    repoRoot = iogx-inputs.antaeus;
    shellName = "antaeus";
  };
in 
  flake