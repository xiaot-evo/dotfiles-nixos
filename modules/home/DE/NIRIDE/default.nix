{ pkgs, ... }:
{
  imports = [
    ./niri
    ./waybar
    ./mako.nix
    ./swayidle.nix
    ./swaylock.nix
    ./xwayland-satellite.nix
    ./swww.nix
    ./fuzzel.nix
    # ./rofi.nix
    # ./mpvpaper.nix
    ./fcitx5.nix
    ./theme.nix
  ];
  home.packages = with pkgs; [ nautilus ];
}
