{ pkgs, ... }:
{
  imports = [
    ./niri
    ./waybar
    ./mako.nix
    ./fuzzel.nix
    ./swayidle.nix
    ./swaylock.nix
    ./xwayland-satellite.nix
    ./swww.nix
    # ./mpvpaper.nix
    ./fcitx5.nix
    ./theme.nix
  ];
  home.packages = with pkgs; [ nautilus ];
}
