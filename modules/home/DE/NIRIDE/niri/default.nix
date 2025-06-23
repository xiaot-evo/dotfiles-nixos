{ inputs, pkgs, ... }:
{
  imports = [ inputs.niri.homeModules.niri ];
  programs.niri = {
    enable = true;
    # package = pkgs.niri-unstable;
    # settings = {};
  };
  # home.file.".config/niri" = {
  #   recursive = true;
  #   source = ./config;
  # };
  home.sessionVariables.NIXOS_OZONE_WL = "1";
}
