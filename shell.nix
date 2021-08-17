let
  sources = import ./nix/sources.nix;
  pkgs = import sources.nixpkgs-unstable {};
  epn = import sources.easy-purescript-nix { inherit pkgs; };
in
pkgs.mkShell {
  buildInputs = with pkgs; with epn; [
    purs-0_14_3
    spago
    pulp
    nodejs
    nodePackages.bower
    nodePackages.purescript-language-server
  ];
}
