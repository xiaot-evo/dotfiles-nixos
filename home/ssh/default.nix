{ pkgs, ... }:
{
  programs.ssh = {
    matchBlocks = {
      "ssh.github.com" = {
        hostname = "";
        user = "git";
        port = "443";
        identityFile = "/home/xiaoting/.ssh/id_ed25519";
        TCPKeepAlive = "yes";
      };
    };
  };
}
