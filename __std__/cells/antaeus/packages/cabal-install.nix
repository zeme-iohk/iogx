# TODO(std) DUP(except the version)

{ inputs, cell }:

let
  project = cell.library.pkgs.haskell-nix.hackage-project {
    name = "cabal-install";

    version = "3.6.2.0";

    compiler-nix-name = cell.library.ghc-compiler-nix-name;

    index-state = cell.library.cabal-project-index-state;

    # The test suite depends on a nonexistent package...
    configureArgs = "--disable-tests";
  };
in
project.hsPkgs.cabal-install.components.exes.cabal
