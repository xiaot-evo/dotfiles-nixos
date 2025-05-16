{ inputs, pkgs, ... }: {
  home.packages = with pkgs; [
    xdg-desktop-portal-hyprland
    rofi-wayland
    xfce.thunar
  ];
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
    package = null;
    portalPackage = null;
    systemd.enable = true;
    plugins = [
      #inputs.hyprland-plugins.packages.${pkgs.system}.hyprbars
    ];
  };
  # home.file.hypr = {
  #   source = ./hypr;
  #   target = "$HOME/.config/hypr_";
  # };
}
