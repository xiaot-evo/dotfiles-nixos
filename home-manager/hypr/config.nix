{ ... }: {
  wayland.windowManager.hyprland = {
    settings = {
      exec-once = [ # 在 Hyprland 启动时执行一次的命令
        # "waybar"
        #"ags run&"
        # "ags -b hypr"
        "hyprpanel &"
        "fcitx5 --replace -d"
        "clash-verge"
      ];
      # windowrule = [ "pseudo" "fcitx" ];
      general = {
        border_size = 1; # 边框大小，默认 2
        no_border_on_floating = false; # 浮动窗口是否无边框，默认 false
        gaps_in = 5; # 窗口之间的内部间隙，默认 5
        gaps_out = 8; # 窗口与屏幕边缘的外部间隙，默认 20
        gaps_workspaces = 0; # 工作区之间的间隙，默认 0
        "col.inactive_border" = "0x66aaaaaa"; # 非活动窗口边框颜色，默认 0x66aaaaaa
        "col.active_border" =
          "rgb(98971A) rgb(CC241D) 45deg"; # 活动窗口边框颜色，默认 0x66ffffff
        "col.nogroup_border" = "0xffffaaff"; # 无组窗口边框颜色，默认 0xffffaaff
        "col.nogroup_border_active" = "0xffff00ff"; # 活动无组窗口边框颜色，默认 0xffff00ff
        layout = "dwindle"; # 布局模式：dwindle 或 master，默认 dwindle
        no_focus_fallback = false; # 无焦点时是否回退，默认 false
        resize_on_border = false; # 是否允许在边框上调整大小，默认 false
        extend_border_grab_area = 15; # 扩展边框抓取区域的大小，默认 15
        hover_icon_on_border = true; # 在边框上悬停时显示图标，默认 true
        allow_tearing = false; # 是否允许撕裂，默认 false
        resize_corner = 0; # 调整大小的角落，默认 0
        snap = {
          enabled = true; # 是否启用窗口吸附，默认 false
          window_gap = 10; # 吸附时的窗口间隙，默认 5
          monitor_gap = 10; # 吸附时的显示器间隙，默认 5
          border_overlap = false; # 吸附时边框是否重叠，默认 false
        };
      };
      decoration = {
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
      input = {
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
      gestures = {
        workspace_swipe = false;
        workspace_swipe_fingers = 3;
        workspace_swipe_min_fingers = false;
        workspace_swipe_distance = 300;
        workspace_swipe_touch = false;
        workspace_swipe_invert = true;
        workspace_swipe_touch_invert = false;
        workspace_swipe_min_speed_to_force = 30;
        workspace_swipe_cancel_ratio = 0.5;
        workspace_swipe_create_new = true;
        workspace_swipe_direction_lock = true;
        workspace_swipe_direction_lock_threshold = 10;
        workspace_swipe_forever = false;
        workspace_swipe_use_r = false;
      };
      group = {
        auto_group = true;
        insert_after_current = true;
        focus_removed_window = true;
        drag_into_group = 1;
        merge_groups_on_drag = true;
        merge_groups_on_groupbar = true;
        merge_floated_into_tiled_on_groupbar = false;
        group_on_movetoworkspace = false;
        "col.border_active" = "0x66ffff00";
        "col.border_inactive" = "0x66777700";
        "col.border_locked_active" = "0x66ff5500";
        "col.border_locked_inactive" = "0x66775500";
        groupbar = {
          enabled = true;
          # font_family = "";
          font_size = 8;
          # font_weight_active = "normal";
          # font_weight_inactive = "normal";
          gradients = true;
          height = 14;
          # indicator_gap = 0;
          indicator_height = 3;
          stacked = false;
          priority = 3;
          render_titles = true;
          # text_offset = 0;
          scrolling = true;
          rounding = 1;
          gradient_rounding = 2;
          round_only_edges = true;
          gradient_round_only_edges = true;
          text_color = "0xffffffff";
          "col.active" = "0x66ffff00";
          "col.inactive" = "0x66777700";
          "col.locked_active" = "0x66ff5500";
          "col.locked_inactive" = "0x66775500";
          gaps_in = 2;
          gaps_out = 2;
          # keep_upper_gap = true;
        };
      };
      "$mainMod" = "SUPER";
      "$fileManager" = "thunar";
      bind = [
        # show keybinds list
        "$mainMod, F1, exec, show-keybinds"
        # keybindings
        "$mainMod, Return, exec, alacritty"
        "$mainMod, Space, exec, rofi -show window"
        "$mainMod, C, killactive"
        "$mainMod, M, exit,"
        "$mainMod, E, exec, $fileManager"
        "$mainMod, V, togglefloating"
        "$mainMod, R, exec, rofi -show drun"
        "$mainMod, J, togglesplit"
        # switch focus
        "$mainMod, left,  movefocus, l"
        "$mainMod, right, movefocus, r"
        "$mainMod, up,    movefocus, u"
        "$mainMod, down,  movefocus, d"
        "$mainMod, h, movefocus, l"
        "$mainMod, j, movefocus, d"
        "$mainMod, k, movefocus, u"
        "$mainMod, l, movefocus, r"

        "$mainMod, left,  alterzorder, top"
        "$mainMod, right, alterzorder, top"
        "$mainMod, up,    alterzorder, top"
        "$mainMod, down,  alterzorder, top"
        "$mainMod, h, alterzorder, top"
        "$mainMod, j, alterzorder, top"
        "$mainMod, k, alterzorder, top"
        "$mainMod, l, alterzorder, top"

        "CTRL ALT, up, exec, hyprctl dispatch focuswindow floating"
        "CTRL ALT, down, exec, hyprctl dispatch focuswindow tiled"

        # window control
        "$mainMod SHIFT, left, movewindow, l"
        "$mainMod SHIFT, right, movewindow, r"
        "$mainMod SHIFT, up, movewindow, u"
        "$mainMod SHIFT, down, movewindow, d"
        "$mainMod SHIFT, h, movewindow, l"
        "$mainMod SHIFT, j, movewindow, d"
        "$mainMod SHIFT, k, movewindow, u"
        "$mainMod SHIFT, l, movewindow, r"

        "$mainMod CTRL, left, resizeactive, -80 0"
        "$mainMod CTRL, right, resizeactive, 80 0"
        "$mainMod CTRL, up, resizeactive, 0 -80"
        "$mainMod CTRL, down, resizeactive, 0 80"
        "$mainMod CTRL, h, resizeactive, -80 0"
        "$mainMod CTRL, j, resizeactive, 0 80"
        "$mainMod CTRL, k, resizeactive, 0 -80"
        "$mainMod CTRL, l, resizeactive, 80 0"

        "$mainMod ALT, left, moveactive,  -80 0"
        "$mainMod ALT, right, moveactive, 80 0"
        "$mainMod ALT, up, moveactive, 0 -80"
        "$mainMod ALT, down, moveactive, 0 80"
        "$mainMod ALT, h, moveactive,  -80 0"
        "$mainMod ALT, j, moveactive, 0 80"
        "$mainMod ALT, k, moveactive, 0 -80"
        "$mainMod ALT, l, moveactive, 80 0"

        # switch workspace
        "$mainMod, 1, workspace, 1"
        "$mainMod, 2, workspace, 2"
        "$mainMod, 3, workspace, 3"
        "$mainMod, 4, workspace, 4"
        "$mainMod, 5, workspace, 5"
        "$mainMod, 6, workspace, 6"
        "$mainMod, 7, workspace, 7"
        "$mainMod, 8, workspace, 8"
        "$mainMod, 9, workspace, 9"
        "$mainMod, 0, workspace, 10"

        # same as above, but switch to the workspace
        "$mainMod SHIFT, 1, movetoworkspacesilent, 1" # movetoworkspacesilent
        "$mainMod SHIFT, 2, movetoworkspacesilent, 2"
        "$mainMod SHIFT, 3, movetoworkspacesilent, 3"
        "$mainMod SHIFT, 4, movetoworkspacesilent, 4"
        "$mainMod SHIFT, 5, movetoworkspacesilent, 5"
        "$mainMod SHIFT, 6, movetoworkspacesilent, 6"
        "$mainMod SHIFT, 7, movetoworkspacesilent, 7"
        "$mainMod SHIFT, 8, movetoworkspacesilent, 8"
        "$mainMod SHIFT, 9, movetoworkspacesilent, 9"
        "$mainMod SHIFT, 0, movetoworkspacesilent, 10"
        "$mainMod CTRL, c, movetoworkspace, empty"
      ];
    };
    extraConfig =
      "\n      monitor=,preferred,auto,1\n\n      xwayland {\n        force_zero_scaling = true\n      }\n    ";
  };
}
