{ inputs, config, pkgs, ... }: {
  imports = [
    ./conf/autostart.nix
    ./conf/bindings.nix
    ./conf/general.nix
    ./conf/decoration.nix
    ./conf/input.nix
  ];
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
}
