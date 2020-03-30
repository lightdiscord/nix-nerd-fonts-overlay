let
  pkgs = import <nixpkgs> { overlays = [ (import ./default.nix) ]; };
in
  pkgs.mkShell {
    buildInputs = pkgs.lib.attrValues pkgs.nerd-fonts;
  }
