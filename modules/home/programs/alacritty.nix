{ ... }: {
  programs.alacritty = {
    enable = true;
    settings = {
      general = {
        working_directory = "None"; # "None"
        live_config_reload = false;
      };
      window = {
        # 窗口尺寸大小（配置变更需要重启生效）
        #
        # 终端显示的列和行的数量。列的数量至少是 2，如果设置为 0 那么会使用窗口管理器决定的大小。
        dimensions = {
          columns = 0;
          lines = 0;
        };
        # 窗口启动位置
        position = "None";
        # 在窗口周围添加的空白区域（以像素为单位）。此填充按 DPI 缩放，并且始终在相对的两侧添加指定的值。
        padding = {
          x = 0;
          y = 0;
        };
        dynamic_padding = false; # 在终端内容周围均匀分布额外的填充。
        # 背景不透明度
        opacity = 0.9;
        blur = true;

        # 窗口的外边框
        #
        # 可以为如下的值:
        #     - full: 边框和标题栏
        #     - none: 边框和标题栏都没有
        #
        # macos 可以独占的配置:
        #     - transparent: 标题栏，透明背景和标题栏按钮
        #     - buttonless:
        #  标题栏，透明背景，但没有标题栏按钮
        decorations = "none";

        # 启动模式（配置变更需要重启生效）
        #
        # 可以为如下的值:
        #   - Windowed: 窗口化
        #   - Maximized: 最大化窗口
        #   - Fullscreen: 全屏
        #
        # macos 可以独占的配置:
        #   - SimpleFullscreen
        # startup_mode: SimpleFullscreen
        startup_mode = "Windowed";

        # 窗口标题
        title = "Alacritty";

        # 是否允许终端的应用更改窗口标题
        dynamic_title = true;

        # Window class (Linux/BSD only):
        # class:
        # Application instance name
        # instance: Alacritty
        # General application class
        # general: Alacritty

        # GTK theme variant (Linux/BSD only)
        #
        # Override the variant of the GTK theme. Commonly supported values are `dark`
        # and `light`. Set this to `None` to use the default theme variant.
        # decorations_theme_variant = "Nono";
      };
      scrolling = {
        # 回滚缓冲区中的最大行数。 设置为 0 会禁用滚动
        history = 10000;

        # 一次滚动几行
        multiplier = 3;
      };
      # 字体配置
      font = {
        # 常规字体
        normal = {
          family = "Hack Nerd Font Mono";
          # 字体风格
          style = "Regular";
        };
        # 粗体
        bold = {
          family = "Hack Nerd Font Mono";
          style = "Bold";
        };
        # 斜体
        italic = {
          family = "Source Code Pro";
          style = "Italic";
        };
        # 斜粗体
        bold_italic = {
          family = "Hack Nerd Font Mono";
          style = "Bold Italic";
        };
        # 字体大小
        size = 12;

        # 每个字符的间的字间距。"offset.y" 可以控制行距，"offset.x" 可以改变字符间距。
        offset = {
          x = 0;
          y = 0;
        };
        builtin_box_drawing = true;
      };
      colors = {
        primary = {
          background = "#ECEFF4";
          foreground = "#81A1C1";
        };
        normal = {
          black = "#D8DEE9";
          red = "#bf616a";
          green = "#a3be8c";
          yellow = "#D08770";
          blue = "#81A1C1";
          magenta = "#B48EAD";
          cyan = "#88C0D0";
          white = "#4C566A";
        };
        bright = {
          black = "#D8DEE9";
          red = "#bf616a";
          green = "#a3be8c";
          yellow = "#D08770";
          blue = "#D8DEE9";
          magenta = "#B48EAD";
          cyan = "#8FBCBB";
          white = "#D8DEE9";
        };
      };
      # 光标配置
      cursor = {
        # 光标样式
        style = {
          # 光标形状
          #
          # 可以为下面的值:
          #   - ▇ Block
          #   - _ Underline
          #   - | Beam
          shape = "Beam";

          # 光标闪烁状态
          #
          # 可以为下面的值:
          #   - Never: Prevent the cursor from ever blinking
          #   - Off: Disable blinking by default
          #   - On: Enable blinking by default
          #   - Always: Force the cursor to always blink
          blinking = "On";
        };
      };
    };
  };
}
