{ ... }: {
  wayland.windowManager.hyprland = {
    settings = {

      gestures = {
        workspace_swipe = true;
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
    };
    extraConfig =
      "\n      monitor=,preferred,auto,1\n\n      xwayland {\n        force_zero_scaling = true\n      }\n    ";
  };
}
