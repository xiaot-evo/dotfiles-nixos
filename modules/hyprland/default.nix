{ pkgs, ... }:

{
  programs.hyprland = {
    enable = true;
    # withUWSM = true; # recommended for most users
    xwayland.enable = true; # Xwayland can be disabled.
    portalPackage = pkgs.xdg-desktop-portal-hyprland;
  };
  # environment.sessionVariables.NIXOS_OZONE_WL = "1";
  programs.waybar.enable = true;
  programs.hyprlock.enable = true;
  programs.thunar.enable = true;
}
