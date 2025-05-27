let
  pkgs = import ./..;
in

pkgs.dockerTools.buildImage {
  name = "hello-docker";
  config = {
    Cmd = [ "${pkgs.hello}/bin/hello" ];
  };
}
