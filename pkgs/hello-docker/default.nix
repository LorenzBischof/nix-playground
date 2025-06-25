{
  dockerTools,
  hello,
}:

dockerTools.buildLayeredImage {
  name = "hello-docker";
  config = {
    Cmd = [ "${hello}/bin/hello" ];
  };
}
