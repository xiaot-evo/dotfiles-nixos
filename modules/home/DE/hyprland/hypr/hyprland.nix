{ pkgs, ... }: {
  imports = [
    conf/autostart.nix
    conf/bindings.nix
    conf/general.nix
    conf/decoration.nix
    conf/input.nix
    conf/gestures.nix
    conf/group.nix
    conf/misc.nix
    conf/animation.nix
    conf/env.nix
    conf/others.nix
  ];
  home.packages = with pkgs; [
    hyprcursor
    rofi-wayland
    swww
    xfce.thunar
    bibata-cursors
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
