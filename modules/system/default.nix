{ pkgs, ... }:
{
  imports = [
    # DE/hyprland/hyprland.nix
    ./DE/niri/niri.nix
    # ./DE/budgie/default.nix
    # ./DE/cosmic

    # programs/clash-verge.nix
    programs/fish.nix
    # programs/virt-manager.nix
    programs/onlyoffice.nix
    programs/nbfc-linux.nix
    ./programs/virtualbox.nix
  ];
  # environment.systemPackages = with pkgs; [
  #   home-manager
  # ];
}
