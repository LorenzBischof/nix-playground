let
  nixpkgs = fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/bdac72d387dca7f836f6ef1fe547755fb0e9df61.tar.gz";
    sha256 = "1kyxarhs7g80ixlcddxw2fbs24zqb250hkyb8wv9xz8hs869n2si";
  };
  pkgs = import nixpkgs { };
in

rec {
  # An example without using callPackage
  hello = import ./pkgs/hello.nix {
    stdenv = pkgs.stdenv;
    fetchurl = pkgs.fetchurl;
  };

  # This builds hello with a custom script
  hello-builder = pkgs.callPackage ./pkgs/hello-builder { };

  # This uses hello from pkgs!
  hello-docker = pkgs.callPackage ./pkgs/hello-docker { };

  # Use our own version of hello. `inherit hello` expands to `hello = hello`.
  hello-docker-derivation = pkgs.callPackage ./pkgs/hello-docker { inherit hello; };

  # Musl is a bit smaller than glibc
  hello-docker-musl = pkgs.callPackage ./pkgs/hello-docker { hello = pkgs.pkgsMusl.hello; };
}
