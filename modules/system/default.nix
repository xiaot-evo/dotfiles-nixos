{ pkgs, ... }:
{
  imports = [
    # DE/hyprland/fcitx5.nix
    DE/hyprland/hyprland.nix

    programs/clash-verge.nix
    programs/bash.nix
    programs/virt-manager.nix
    programs/onlyoffice.nix
    programs/nbfc-linux.nix
  ];
  # environment.systemPackages = with pkgs; [
  #   home-manager
  # ];
}
