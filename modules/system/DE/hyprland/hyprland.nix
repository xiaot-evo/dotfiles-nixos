{ inputs, pkgs, ... }:
{
  # imports = [ ./fcitx5.nix ];
  programs.hyprland = {
    enable = true;
    # set the flake package
    # package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
    package = pkgs.hyprland;
    # make sure to also set the portal package, so that they are in sync
    # portalPackage = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.xdg-desktop-portal-hyprland;
    portalPackage = pkgs.xdg-desktop-portal-hyprland;

  };
}
