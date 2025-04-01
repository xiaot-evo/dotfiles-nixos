{ pkgs, ... }:

{
  gtk = {
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
    iconTheme = {
      name = "Tela-nord-dark";
      package = pkgs.tela-icon-theme;
    };
    cursorTheme = {
      name = "Bibata-Modern-Classic";
      package = pkgs.bibata-cursors;
      size = 16;
    };
  };
}
