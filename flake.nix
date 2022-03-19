{
  description = "Nix Yarn workspace";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/release-21.11";
    flake-utils.url = github:numtide/flake-utils;
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.simpleFlake {
      inherit self nixpkgs;
      name = "nix-yarn-workspace";
      shell = ./shell.nix;
    };
}
