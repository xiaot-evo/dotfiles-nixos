{ pkgs, config, ... }:
{
  i18n.inputMethod = {
    # enabled = "fcitx5";
    type = "fcitx5";
    enable = true;
    # waylandFrontend = true;
    fcitx5.addons =
      let
        config.packageOverrides = pkgs: {
          fcitx5-rime = pkgs.fcitx5-rime.override {
            rimeDataPkgs = [
              ../../../../assets/rime-ice
            ];
          };
        };
      in
      with pkgs;
      [
        fcitx5-gtk # alternatively, kdePackages.fcitx5-qt
        fcitx5-rime
        fcitx5-nord
      ];
  };
}
