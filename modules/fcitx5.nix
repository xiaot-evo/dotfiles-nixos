{ inputs, pkgs, ... }: {
  i18n.inputMethod = {
    type = "fcitx5";
    enable = true;
    # waylandFrontend = true;
    fcitx5.addons = with pkgs; [
      rime-data
      fcitx5-gtk # alternatively, kdePackages.fcitx5-qt
      (fcitx5-rime.override {
        rimeDataPkgs = [ ../assets/rime-ice ];
      })
      fcitx5-nord
    ];
  };
}
