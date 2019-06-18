{ nixpkgs ? import ./nixpkgs.nix {} }:

nixpkgs.callPackage ./tvm.nix {}
