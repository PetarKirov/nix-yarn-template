{ pkgs }: with pkgs;
let
  nodejs = nodejs-16_x;
in
mkShell {
  buildInputs = [
    figlet
    nodejs
    (yarn.override { inherit nodejs; })
  ];

  shellHook = ''
    figlet "Nix Yarn workspace"
  '';
}
