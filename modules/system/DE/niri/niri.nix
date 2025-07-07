{ inputs, pkgs, ... }:
{
  imports = [
    inputs.niri.nixosModules.niri
  ];
  programs.xwayland.enable = true;
  programs.niri = {
    enable = true;
    package = pkgs.niri;
  };
}
