{ ... }: {
  programs.ssh = {
    enable = true;
    matchBlocks = {
      "github" = {
        port = 1022;
        hostname = "example.com";
        user = "me";
      };
    };
  };
}
