{ iogx-inputs }:

let
  flake = iogx-inputs.self.mkFlake { } rec {
    repoRoot = iogx-inputs.marconi;
    shellName = "marconi";
    systems = [ "x86_64-linux" "x86_64-darwin" ];
    haskellCompilers = [ "ghc8107" ];
    includeReadTheDocsSite = true;
    readTheDocsSiteRoot = repoRoot + "/doc/read-the-docs-site";
    readTheDocsExtraHaddockPackages = (import ./nix/readthedocs.nix).extra-haddock-packages;
    readTheDocsHaddockPrologue = (import ./nix/readthedocs.nix).haddock-prologue;
  };
in
flake


