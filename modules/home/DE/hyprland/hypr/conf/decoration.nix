{
  wayland.windowManager.hyprland.settings.decoration = {
    rounding = 8;
    rounding_power = 2.0;
    active_opacity = 0.9;
    inactive_opacity = 0.8;
    fullscreen_opacity = 0.9;
    dim_inactive = false;
    dim_strength = 0.5;
    dim_special = 0.2;
    dim_around = 0.4;
    # screen_shader = "";
    # border_part_of_window = true;
    blur = {
      enabled = true;
      size = 8;
      passes = 1;
      ignore_opacity = true;
      new_optimizations = true;
      xray = false;
      noise = 1.17e-2;
      contrast = 0.8916;
      brightness = 0.8172;
      vibrancy = 0.1696;
      vibrancy_darkness = 0.0;
      special = false;
      popups = false;
      popups_ignorealpha = 0.2;
      input_methods = false;
      input_methods_ignorealpha = 0.2;
    };
    shadow = {
      enabled = true;
      range = 4;
      render_power = 3;
      sharp = false;
      ignore_window = true;
      color = "0xee1a1a1a";
      # color_inactive = "";
      # offset = [ "0" "0" ];
      scale = 1.0;
    };
    # animations = {
    #   enabled = true;
    #   first_launch_animation = true;
    # };
  };
}
