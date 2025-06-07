{
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
    configDir = inputs.ags-gtk4;
    # additional packages to add to gjs's runtime
    extraPackages = [
      inputs.ags.packages.${settings.system}.io
      inputs.ags.packages.${settings.system}.gjs
      inputs.ags.packages.${settings.system}.tray
      inputs.ags.packages.${settings.system}.cava
      inputs.ags.packages.${settings.system}.auth
      inputs.ags.packages.${settings.system}.apps
      inputs.ags.packages.${settings.system}.river
      inputs.ags.packages.${settings.system}.mpris
      inputs.ags.packages.${settings.system}.greet
      inputs.ags.packages.${settings.system}.notifd
      inputs.ags.packages.${settings.system}.astal4
      inputs.ags.packages.${settings.system}.astal3
      inputs.ags.packages.${settings.system}.wireplumber
      inputs.ags.packages.${settings.system}.powerprofiles
      inputs.ags.packages.${settings.system}.network
      inputs.ags.packages.${settings.system}.hyprland
      inputs.ags.packages.${settings.system}.bluetooth
      inputs.ags.packages.${settings.system}.battery
      ##
      pkgs.libadwaita
      pkgs.libsoup_3
      pkgs.geoclue2
    ];
  };
  home.packages = with pkgs; [
    gjs
    brightnessctl
    glib
    hyprshade
    slurp
    wayshot
    wl-clipboard
    wf-recorder
    killall
    better-control
  ];
}
