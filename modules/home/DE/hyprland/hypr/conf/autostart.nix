{ inputs, ... }:
{
  wayland.windowManager.hyprland.settings.exec-once = [
    # 在 Hyprland 启动时执行一次的命令
    "swww-daemon &"
    # "hyprpanel &"
    # "ags run ~/Downloads/ags-gtk4 --gtk4 &"
    "ags run --gtk4 &"
    "fcitx5 --replace -d"
    "clash-verge"
  ];
}
