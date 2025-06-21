{ pkgs, ... }:
{
  services.xserver.desktopManager.budgie = {
    enable = true;
    # extraGSettingsOverridePackages = pkgs.budgie-screensaver  ;
    # extraGSettingsOverrides = ;
    extraPlugins = with pkgs; [
      budgie-control-center
    ];
    sessionPath = [ pkgs.budgie-session ];
  };
  # environment.budgie.excludePackages = [ pkgs. ];
  environment.systemPackages = with pkgs; [
    budgie-screensaver
  ];
}
