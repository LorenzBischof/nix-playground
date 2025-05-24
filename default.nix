let
  tarball = fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/bdac72d387dca7f836f6ef1fe547755fb0e9df61.tar.gz";
    sha256 = "sha256:1kyxarhs7g80ixlcddxw2fbs24zqb250hkyb8wv9xz8hs869n2si";
  };
  pkgs = import tarball { };
in

pkgs.dockerTools.buildImage {
  name = "hello-docker";
  config = {
    Cmd = [ "${pkgs.hello}/bin/hello" ];
  };
}
