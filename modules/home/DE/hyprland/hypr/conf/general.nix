{
  wayland.windowManager.hyprland.settings.general = {
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
}
