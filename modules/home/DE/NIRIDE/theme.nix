{ pkgs, ... }:

{
  home.pointerCursor = {
    gtk.enable = true;
    x11.enable = true;
    # hyprcursor.enable = true;
    # hyprcursor.size = 20;
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Classic";
    size = 20;
  };

  gtk = {
    enable = true;
    theme = {
      name = "Colloid-Light-Nord";
      # name = "adw-gtk3-light";
      package = (
        pkgs.colloid-gtk-theme.override {
          themeVariants = [ "default" ];
          colorVariants = [ "light" ];
          sizeVariants = [ "standard" ];
          tweaks = [
            "nord"
            "rimless"
            "normal"
          ];
        }
      );
    };
    iconTheme = {
      name = "Tela-nord-light";
      package = pkgs.tela-icon-theme;
    };
    cursorTheme = {
      name = "Bibata-Modern-Classic";
      package = pkgs.bibata-cursors;
      size = 20;
    };
    font = {
      name = "Smiley Sans";
      # package = pkg.;
      size = 12;
    };
  };
}
