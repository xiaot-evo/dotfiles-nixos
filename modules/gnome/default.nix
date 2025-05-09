{ pkgs, ... }: {
  imports = [ ./ibus ];
  # Enable the X11 windowing system.
  # services.xserver.enable = true;

  # Enable the GNOME Desktop Environment.
  # services.xserver. displayManager.gdm.enable = true;
  # services.xserver. desktopManager.gnome.enable = true;
  services.xserver = {
    enable = true;
    # displayManager.lightdm.enable = true;
    displayManager.gdm = {
      enable = true;
      wayland = true;
    };
    desktopManager.gnome.enable = true;
  };
  environment.gnome.excludePackages = with pkgs; [
    epiphany
    gnome-text-editor
    xterm
    gnome-music
  ];
  environment.systemPackages = with pkgs;
    [
      rhythmbox

    ];
  environment.variables = {
    GTK_IM_MODULE = "ibus";
    QT_IM_MODULE = "ibus";
    XMODIFIERS = "@im=ibus";
  };
  # Set your time zone.
  time.timeZone = "Asia/Shanghai";

  # Select internationalisation properties.
  # i18n.defaultLocale = "en_US.UTF-8";
  i18n.defaultLocale = "zh_CN.UTF-8";
  i18n.extraLocaleSettings = {
    LC_CTYPE = "en_US.UTF-8";

  };
}
