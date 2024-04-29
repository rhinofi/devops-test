{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=ff0dbd94265ac470dda06a657d5fe49de93b4599";
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs = {
    self,
    flake-utils,
    nixpkgs,
  }:
    flake-utils.lib.eachDefaultSystem (
      system: let
        pkgs = import nixpkgs {
          inherit system;
          config.allowUnfree = true;
        };
        devShell = pkgs.mkShell {
          packages = with pkgs; [
            terraform
          ];
        };
      in {
        devShells.default = devShell;
      }
    );
}
