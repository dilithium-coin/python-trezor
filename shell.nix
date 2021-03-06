with import <nixpkgs> {};

let
  myPython = python3.withPackages(p: [p.pytest p.black p.isort p.flake8 p.requests p.mnemonic p.construct p.pyblake2 p.mock p.ecdsa p.click p.libusb1 p.protobuf p.typing-extensions]);
in
  stdenv.mkDerivation {
    name = "python-trezor-dev";
    buildInputs = [ myPython autoflake protobuf ];
  }
