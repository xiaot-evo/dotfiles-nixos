{ pkgs, ... }:
{
  home.packages = [ pkgs.mako ];
  services.mako = {
    enable = true;
    package = pkgs.mako;
    settings = {
      actions = true;
      anchor = "top-right";
      background-color = "#000000";
      border-color = "#FFFFFF";
      border-radius = 10;
      default-timeout = 0;
      font = "Maple Mono NF CN Medium";
      height = 100;
      width = 300;
      icons = true;
      ignore-timeout = false;
      layer = "top";
      margin = 10;
      markup = true;

      # Section example
      "actionable=true" = {
        anchor = "top-left";
      };
    };
  };
}
