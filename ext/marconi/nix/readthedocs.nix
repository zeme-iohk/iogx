{
  extra-haddock-packages = hsPkgs: {
    inherit (hsPkgs) 
      plutus-core 
      plutus-tx 
      plutus-tx-plugin 
      plutus-ledger-api 
      quickcheck-contractmodel;
  };

  haddock-prologue = ''
    = Combined documentation for all the public Plutus libraries

    == Handy module entrypoints

      * "Plutus.Contract": Writing Plutus apps (off-chain code).
      * "Ledger.Typed.Scripts": A type-safe interface for spending and
        producing script outputs. Built on "PlutusTx".
      * "Plutus.Trace.Emulator": Testing Plutus contracts in the emulator.
  '';
}