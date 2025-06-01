{ pkgs, inputs, ... }:
{
  i18n.inputMethod = {
    # enabled = "fcitx5";
    type = "fcitx5";
    enable = true;
    fcitx5.waylandFrontend = true;
    fcitx5.addons = with pkgs; [
      fcitx5-gtk # alternatively, kdePackages.fcitx5-qt
      (fcitx5-rime.override {
        rimeDataPkgs = [ inputs.rime-ice ];
      })
      fcitx5-nord
    ];
  };
}
