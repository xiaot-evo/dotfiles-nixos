{ pkgs, ... }:
{
  imports = [
    # DE/hyprland/hyprland.nix
    ./DE/niri/niri.nix
    # ./DE/budgie/default.nix

    # programs/clash-verge.nix
    programs/bash.nix
    programs/virt-manager.nix
    programs/onlyoffice.nix
    programs/nbfc-linux.nix
  ];
  # environment.systemPackages = with pkgs; [
  #   home-manager
  # ];
}
