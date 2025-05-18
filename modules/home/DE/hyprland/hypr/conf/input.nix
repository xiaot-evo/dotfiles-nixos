{
  wayland.windowManager.hyprland.settings.input = {
    # kb_model = "";
    kb_layout = "us"; # 键盘布局
    # kb_variant = "";
    # kb_options = "";
    # kb_rules = "";
    # kb_file = "";
    numlock_by_default = false;
    resolve_binds_by_sym = false;
    repeat_rate = 25;
    repeat_delay = 600;
    sensitivity = 0.0;
    # accel_profile = "";
    force_no_accel = false;
    left_handed = false;
    # scroll_points = "";
    # scroll_method = "";
    scroll_button = 0;
    scroll_button_lock = 0;
    scroll_factor = 1.0;
    natural_scroll = false;
    follow_mouse = 1; # 窗口焦点是否随光标移动
    follow_mouse_threshold = 0.0;
    focus_on_close = 0;
    mouse_refocus = true;
    float_switch_override_focus = 1;
    special_fallthrough = false;
    off_window_axis_events = 1;
    emulate_discrete_scroll = 1;
    touchpad = {
      disable_while_typing = true;
      natural_scroll = true;
      scroll_factor = 1.0;
      middle_button_emulation = false;
      # tap_button_map = "";
      clickfinger_behavior = false;
      tap-to-click = true;
      drag_lock = false;
      tap-and-drag = true;
      flip_x = false;
      flip_y = false;
    };
    touchdevice = {
      transform = -1;
      # output = "Auto";
      enabled = true;
    };
    tablet = {
      transform = -1;
      # output = "";
      # region_position = [ "0" "0" ];
      absolute_region_position = false;
      # region_size = [ "0" "0" ];
      relative_input = false;
      left_handed = false;
      # active_area_size = [ "0" "0" ];
      # active_area_position = [ "0" "0" ];
    };
  };
}
