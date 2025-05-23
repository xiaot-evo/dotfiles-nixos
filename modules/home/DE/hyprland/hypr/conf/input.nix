{
  wayland.windowManager.hyprland.settings.input = {
    # kb_model = "";
    kb_layout = "us"; # 设置键盘布局（如 "us", "cn", "de" 等）
    # kb_variant = "";
    # kb_options = "";
    # kb_rules = "";
    # kb_file = "";
    numlock_by_default = false; # 启动时是否启用数字小键盘
    resolve_binds_by_sym = false; # 是否按符号（symbol）而不是 keycode 匹配快捷键
    repeat_rate = 25; # 键盘重复输入速度（每秒字符数）
    repeat_delay = 600; # 键盘按键重复延迟（毫秒）
    sensitivity = 0.0; # 鼠标灵敏度（通常 0.0 不调整）
    # accel_profile = "";
    force_no_accel = false; # 禁用鼠标加速度（为 true 则关闭）
    left_handed = false; # 鼠标是否设置为左手模式（左右键交换）
    # scroll_points = "";
    # scroll_method = "";
    scroll_button = 0; # 鼠标滚动按钮（中键为 2，默认 0 为禁用）
    scroll_button_lock = 0; # 滚动按钮锁定（0 = 禁用）
    scroll_factor = 1.0; # 调整滚动速度（>1 更快，<1 更慢）
    natural_scroll = false; # 是否启用“自然滚动”（方向类似 macOS）
    follow_mouse = 1; # 窗口焦点是否随光标移动
    follow_mouse_threshold = 0.0; # 移动多远才触发 focus（单位像素）
    focus_on_close = 0; # 关闭窗口后，焦点是否返回上一个窗口（0 关闭）
    mouse_refocus = true; # 鼠标移动时是否自动聚焦窗口
    float_switch_override_focus = 1; # 在浮动窗口切换时强制聚焦新窗口
    special_fallthrough = false; # 是否让特殊按键继续传给客户端
    off_window_axis_events = 1; # 是否允许鼠标滚动事件传到非聚焦窗口
    emulate_discrete_scroll = 1; # 鼠标滚轮是否模拟为一格一格滚动（更兼容某些鼠标）
    touchpad = {
      disable_while_typing = true; # 输入时禁用触控板，防止误触
      natural_scroll = true; # 启用自然滚动方向
      scroll_factor = 1.0; # 滚动灵敏度
      middle_button_emulation = false; # 两指同时点击是否模拟中键
      # tap_button_map = "";
      clickfinger_behavior = false; # false 为区域点击，true 为指头数识别
      tap-to-click = true; # 启用轻触点击
      drag_lock = false; # 拖动锁定（释放手指后继续拖动）
      tap-and-drag = true; # 支持点按并拖动操作
      flip_x = false; # 水平翻转触控板方向
      flip_y = false; # 垂直翻转触控板方向
    };
    touchdevice = {
      transform = -1; # 触摸屏旋转方向（-1 自动检测）
      # output = "Auto"; # 输出设备（屏幕）名称
      enabled = false; # 是否启用触摸屏
    };
    tablet = {
      transform = -1; # 数位板方向旋转（-1 表示自动）
      # output = "";
      # region_position = [ "0" "0" ];
      absolute_region_position = false; # 使用绝对定位还是相对位置
      # region_size = [ "0" "0" ];
      relative_input = false; # 是否启用相对输入模式（如鼠标）
      left_handed = false; # 左手模式（翻转输入区域）
      # active_area_size = [ "0" "0" ];
      # active_area_position = [ "0" "0" ];
    };
  };
}
