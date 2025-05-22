{ pkgs, ... }:

{
  home.pointerCursor = {
    gtk.enable = true;
    # x11.enable = true;
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Classic";
    size = 16;
  };

  gtk = {
    enable = true;
    theme = {
      name = "Colloid-Light-Nord";
      # name = "adw-gtk3-light";
      package = (pkgs.colloid-gtk-theme.override {
        themeVariants = [ "default" ];
        colorVariants = [ "light" ];
        sizeVariants = [ "standard" ];
        tweaks = [ "nord" "rimless" "normal" ];
      });
    };
    iconTheme = {
      name = "Tela-nord-light";
      package = pkgs.tela-icon-theme;
    };
    # cursorTheme = {
    #   name = "Bibata-Modern-Classic";
    #   package = pkgs.bibata-cursors;
    #   size = 16;
    # };
    # font = {
    #   name = "";
    #   package = pkg.;
    #   size = "";
    # };
  };
}
