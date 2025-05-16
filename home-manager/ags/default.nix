{ inputs, pkgs, ... }: {
  imports = [ inputs.ags.homeManagerModules.default ];
  programs.ags = {
    enable = true;

    # symlink to ~/.config/ags
    configDir = ./ags-gtk4;

    # additional packages to add to gjs's runtime
    extraPackages = with pkgs; [
      sassc
      swww
      maple-mono.NF
      maple-mono.NF-CN
      brightnessctl
      bun
      matugen
      inputs.ags.packages.${system}.apps
      inputs.ags.packages.${system}.battery
      inputs.ags.packages.${system}.hyprland
      inputs.ags.packages.${system}.wireplumber
      inputs.ags.packages.${system}.tray
      inputs.ags.packages.${system}.notifd
      inputs.ags.packages.${system}.network
      inputs.ags.packages.${system}.bluetooth
      inputs.ags.packages.${system}.mpris
      inputs.ags.packages.${system}.auth
      inputs.ags.packages.${system}.powerprofiles
    ];
  };
}
