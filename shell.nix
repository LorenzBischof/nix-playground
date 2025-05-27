let
  pkgs = import ./.;
in

pkgs.mkShellNoCC {
  packages = [
    pkgs.dive
    pkgs.docker-client
    pkgs.nixfmt-rfc-style
    pkgs.nixd
  ];
}
