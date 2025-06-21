{ pkgs, ... }:
{
  services.sing-box = {
    enable = true;
    package = pkgs.sing-box;
    settings = { };
  };
}
