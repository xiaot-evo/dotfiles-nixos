{
  config,
  inputs,
  pkgs,
  settings,
  ...
}:
{
  imports = [ inputs.ags.homeManagerModules.default ];
  programs.ags = {
    enable = true;
    package = inputs.ags.packages.${settings.system}.default;
    # symlink to ~/.config/ags
    configDir = (builtins.toPath (inputs.self + "assets/ags-gtk4"));
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
  home.packages = with pkgs; [
    libadwaita
    gjs
    brightnessctl
  ];
}
