{
  wayland.windowManager.hyprland.settings = {
    "$mainMod" = "SUPER";
    "$fileManager" = "thunar";
    "$terminal" = "ghostty";

    bind = [
      ## Hyprland keybinds

      # show keybinds list
      "$mainMod, F1, exec, show-keybinds"
      # keybindings
      "$mainMod, Return, exec, $terminal"
      "$mainMod, Space, exec, rofi -show window"
      "$mainMod, E, exec, $fileManager"
      "$mainMod, R, exec, rofi -show drun"
      "$mainMod, S, exec, hyprlock"
      "$mainMod, Q, killactive"
      "$mainMod, Delete, exit,"
      "$mainMod, J, togglesplit"
      "$mainMod, V, togglefloating"
      # switch focus
      "$mainMod, left,  movefocus, l"
      "$mainMod, right, movefocus, r"
      "$mainMod, up,    movefocus, u"
      "$mainMod, down,  movefocus, d"
      "$mainMod, h, movefocus, l"
      "$mainMod, j, movefocus, d"
      "$mainMod, k, movefocus, u"
      "$mainMod, l, movefocus, r"
      "ALT, Tab, cyclenext"

      "$mainMod, left,  alterzorder, top"
      "$mainMod, right, alterzorder, top"
      "$mainMod, up,    alterzorder, top"
      "$mainMod, down,  alterzorder, top"
      "$mainMod, h, alterzorder, top"
      "$mainMod, j, alterzorder, top"
      "$mainMod, k, alterzorder, top"
      "$mainMod, l, alterzorder, top"

      "CTRL ALT, j, exec, hyprctl dispatch focuswindow floating"
      "CTRL ALT, k, exec, hyprctl dispatch focuswindow tiled"

      # window control
      "$mainMod SHIFT, left, movewindow, l"
      "$mainMod SHIFT, right, movewindow, r"
      "$mainMod SHIFT, up, movewindow, u"
      "$mainMod SHIFT, down, movewindow, d"
      "$mainMod SHIFT, h, movewindow, l"
      "$mainMod SHIFT, j, movewindow, d"
      "$mainMod SHIFT, k, movewindow, u"
      "$mainMod SHIFT, l, movewindow, r"

      "$mainMod CTRL, left, resizeactive, -30 0"
      "$mainMod CTRL, right, resizeactive, 30 0"
      "$mainMod CTRL, up, resizeactive, 0 -30"
      "$mainMod CTRL, down, resizeactive, 0 30"
      "$mainMod CTRL, h, resizeactive, -30 0"
      "$mainMod CTRL, j, resizeactive, 0 30"
      "$mainMod CTRL, k, resizeactive, 0 -30"
      "$mainMod CTRL, l, resizeactive, 30 0"

      "$mainMod ALT, left, moveactive,  -30 0"
      "$mainMod ALT, right, moveactive, 30 0"
      "$mainMod ALT, up, moveactive, 0 -30"
      "$mainMod ALT, down, moveactive, 0 30"
      "$mainMod ALT, h, moveactive,  -30 0"
      "$mainMod ALT, j, moveactive, 0 30"
      "$mainMod ALT, k, moveactive, 0 -30"
      "$mainMod ALT, l, moveactive, 30 0"

      # switch workspace
      "$mainMod, mouse:275, workspace, e+1"
      "$mainMod, mouse:276, workspace, e-1"
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
      "$mainMod SHIFT, 1, movetoworkspace, 1" # movetoworkspacesilent
      "$mainMod SHIFT, 2, movetoworkspace, 2"
      "$mainMod SHIFT, 3, movetoworkspace, 3"
      "$mainMod SHIFT, 4, movetoworkspace, 4"
      "$mainMod SHIFT, 5, movetoworkspace, 5"
      "$mainMod SHIFT, 6, movetoworkspace, 6"
      "$mainMod SHIFT, 7, movetoworkspace, 7"
      "$mainMod SHIFT, 8, movetoworkspace, 8"
      "$mainMod SHIFT, 9, movetoworkspace, 9"
      "$mainMod SHIFT, 0, movetoworkspace, 10"
      "$mainMod CTRL, c, movetoworkspace, empty"

      "$mainMod ALT, 1, movetoworkspacesilent, 1" # movetoworkspacesilent
      "$mainMod ALT, 2, movetoworkspacesilent, 2"
      "$mainMod ALT, 3, movetoworkspacesilent, 3"
      "$mainMod ALT, 4, movetoworkspacesilent, 4"
      "$mainMod ALT, 5, movetoworkspacesilent, 5"
      "$mainMod ALT, 6, movetoworkspacesilent, 6"
      "$mainMod ALT, 7, movetoworkspacesilent, 7"
      "$mainMod ALT, 8, movetoworkspacesilent, 8"
      "$mainMod ALT, 9, movetoworkspacesilent, 9"
      "$mainMod ALT, 0, movetoworkspacesilent, 10"
    ];
    bindm = [
      "$mainMod, mouse:272, movewindow"
      "$mainMod, Z, movewindow"
      "$mainMod, mouse:273, resizewindow"
      "$mainMod, X, resizewindow"
    ];
  };
}
