{ pkgs, ... }:
{
  virtualisation.virtualbox.host = {
    enable = true;
    enableExtensionPack = true;
    addNetworkInterface = true;
    package = pkgs.virtualbox;
  };
}
