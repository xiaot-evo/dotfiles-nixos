{ pkgs, ... }: {
  home.packages = with pkgs; [
    hyprland
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

    ];

  };

}
