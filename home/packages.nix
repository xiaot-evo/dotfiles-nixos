{ pkgs, zen-browser, ... }:

{
  home.packages = with pkgs; [
    fastfetch
    clash-verge-rev
    gnome-extension-manager
    bilibili
    qq
    telegram-desktop
    onlyoffice-bin
    zen-browser.packages."${system}".default
    gnome-tweaks
    obs-studio
  ];
}
