{ pkgs, ... }:
{
  imports = [
    ./niri
    ./waybar
    ./fuzzel.nix
    ./mako.nix
    ./swww.nix
    ./swayidle.nix
    ./fcitx5.nix
  ];
  home.packages = with pkgs; [
    swww
    swaylock
    swayidle
  ];
}
