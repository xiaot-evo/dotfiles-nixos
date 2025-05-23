{ ... }: {
  wayland.windowManager.hyprland.settings = {
    monitor = ", 1920x1080@60, auto, 1";
    xwayland = {
      enabled = true;
      force_zero_scaling = 1;

    };
  };
}
