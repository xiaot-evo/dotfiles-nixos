{ pkgs, ... }:

{
  programs.gnome-shell = {
    enable = true;
    theme = {
      name = "Colloid-Dark-Nord";
      package = (pkgs.colloid-gtk-theme.override {
        themeVariants = [ "default" ];
        colorVariants = [ "dark" ];
        sizeVariants = [ "standard" ];
        tweaks = [ "nord" "rimless" "normal" ];
      });
    };
    extensions = [
      { package = pkgs.gnomeExtensions.coverflow-alt-tab; }
      { package = pkgs.gnomeExtensions.dash-to-dock; }
      { package = pkgs.gnomeExtensions.blur-my-shell; }
      { package = pkgs.gnomeExtensions.caffeine; }
      { package = pkgs.gnomeExtensions.lock-keys; }
      { package = pkgs.gnomeExtensions.appindicator; }
      { package = pkgs.gnomeExtensions.clipboard-indicator; }
      { package = pkgs.gnomeExtensions.customize-ibus; }
      { package = pkgs.gnomeExtensions.rounded-window-corners-reborn; }
      {
        id = "user-theme@gnome-shell-extensions.gcampax.github.com";
        package = pkgs.gnome-shell-extensions;
      }
    ];
  };
}
