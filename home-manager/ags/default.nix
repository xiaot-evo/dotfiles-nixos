{ inputs, pkgs, settings, ... }: {
  imports = [ inputs.ags.homeManagerModules.default ];
  programs.ags = {
    enable = true;

    # symlink to ~/.config/ags
    configDir = ./ags-gtk4;

    # additional packages to add to gjs's runtime
    extraPackages = with inputs.ags.packages.${settings.system}; [
      io
      gjs
      tray
      cava
      auth
      apps
      river
      mpris
      greet
      notifd
      astal4
      astal3
      wireplumber
      powerprofiles
      network
      hyprland
      bluetooth
      battery
    ];
  };
  home.packages = with pkgs;[
    sassc
    swww
    maple-mono.NF
    maple-mono.NF-CN
    brightnessctl
    bun
    matugen
  ];
}
