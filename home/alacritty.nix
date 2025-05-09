{ ... }: {
  programs.alacritty = {
    enable = true;
    settings = {
      window = {
        # 窗口尺寸大小（配置变更需要重启生效）
        #
        # 终端显示的列和行的数量。列的数量至少是 2，如果设置为 0 那么会使用窗口管理器决定的大小。
        dimensions = {
          columns = 120;
          lines = 40;
        };
        opacity = 0.9;
        # blur = true;
        # 在终端内容周围平均分配额外的 padding。
        # dynamic_padding: false

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
        # gtk_theme_variant: None
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
          family = "Source Code Pro";
          # 字体风格
          style = "Regular";
        };
        # 粗体
        bold = {
          family = "Hack";
          style = "Bold";
        };
        # 斜体
        italic = {
          family = "Source Code Pro";
          style = "Italic";
        };
        # 斜粗体
        bold_italic = {
          family = "Hack";
          style = "Bold Italic";
        };
        # 字体大小
        size = 12;

        # 每个字符的间的字间距。"offset.y" 可以控制行距，"offset.x" 可以改变字符间距。
        offset = {
          x = 0;
          y = 0;
        };
      };
      colors = {
        primary = {
          background = "#2E3440";
          foreground = "#D8DEE9";
        };
        normal = {
          black = "#3B4252";
          red = "#BF616A";
          green = "#A3BE8C";
          yellow = "#EBCB8B";
          blue = "#81A1C1";
          magenta = "#B48EAD";
          cyan = "#88C0D0";
          white = "#E5E9F0";
        };
        bright = {
          black = "#4C566A";
          red = "#BF616A";
          green = "#A3BE8C";
          yellow = "#EBCB8B";
          blue = "#81A1C1";
          magenta = "#B48EAD";
          cyan = "#88C0D0";
          white = "#ECEFF4";
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
