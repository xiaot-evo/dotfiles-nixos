{ pkgs, ... }:

{
  i18n.inputMethod = {
    enable = true;
    type = "ibus";
    # enabled = "ibus";
    ibus.engines = with pkgs.ibus-engines;
      [
        # any engine you want, for example
        # rime
        (rime.override { rimeDataPkgs = [ ./rime-ice ]; })
      ];
  };
}
