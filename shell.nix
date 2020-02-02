with (import <nixpkgs> {});
let
  gems = bundlerEnv {
    name = "robertnash-net";
    inherit ruby;
    gemdir = ./.;
  };
in stdenv.mkDerivation {
  name = "robertnash-net";
  buildInputs = [gems ruby];
}
