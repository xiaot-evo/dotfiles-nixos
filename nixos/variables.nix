{ pkgs, ... }: {
  environment.variables = {
    GTK_IM_MODULE = "fcitx";
    QT_IM_MODULE = "fcitx";
    XMODIFIERS = "@im=fcitx";
    GI_TYPELIB_PATH = "${pkgs.libadwaita}";
  };
}
