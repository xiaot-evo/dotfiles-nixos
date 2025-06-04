{ ... }:
{
  programs.ghostty = {
    enable = true;
    themes = {
      catppuccin-latte = {
        background = "eff1f5";
        foreground = "4c4f69";
        cursor-color = "dc8a78";
        cursor-text = "eff1f5";
        palette = [
          "0=#5c5f77"
          "1=#d20f39"
          "2=#40a02b"
          "3=#df8e1d"
          "4=#1e66f5"
          "5=#ea76cb"
          "6=#179299"
          "7=#acb0be"
          "8=#6c6f85"
          "9=#d20f39"
          "10=#40a02b"
          "11=#df8e1d"
          "12=#1e66f5"
          "13=#ea76cb"
          "14=#179299"
          "15=#bcc0cc"
        ];
        selection-background = "d8dae1";
        selection-foreground = "4c4f69";
      };
      catppuccin-mocha = {
        background = "1e1e2e";
        foreground = "cdd6f4";
        cursor-color = "f5e0dc";
        cursor-text = "1e1e2e";
        palette = [
          "0=#45475a"
          "1=#f38ba8"
          "2=#a6e3a1"
          "3=#f9e2af"
          "4=#89b4fa"
          "5=#f5c2e7"
          "6=#94e2d5"
          "7=#bac2de"
          "8=#585b70"
          "9=#f38ba8"
          "10=#a6e3a1"
          "11=#f9e2af"
          "12=#89b4fa"
          "13=#f5c2e7"
          "14=#94e2d5"
          "15=#a6adc8"
        ];
        selection-background = "353749";
        selection-foreground = "cdd6f4";
      };
    };
    settings = {
      # This is the configuration file for Ghostty.
      #
      # This template file has been automatically created at the following
      # path since Ghostty couldn't find any existing config files on your system:
      #
      #   /home/xiaoting/.config/ghostty/config
      #
      # The template does not set any default options, since Ghostty ships
      # with sensible defaults for all options. Users should only need to set
      # options that they want to change from the default.
      #
      # Run `ghostty +show-config --default --docs` to view a list of
      # all available config options and their default values.
      #
      # Additionally, each config option is also explained in detail
      # on Ghostty's website, at https://ghostty.org/docs/config.

      # Config syntax crash course
      # ==========================
      # # The config file consists of simple key-value pairs,
      # # separated by equals signs.
      font-family = "Hack Nerd Font Mono";
      # font-family-bold = "Hack Nerd Font Mono Bold";
      # font-family-italic = "Hack Nerd Font Mono Italic";
      # font-family-bold-italic = "Hack Nerd Font Mono Bold Italic";
      font-size = 13;

      # window-padding-x = 2
      #
      # # Spacing around the equals sign does not matter.
      # # All of these are identical:
      # key=value
      # key= value
      # key =value
      # key = value
      #
      # # Any line beginning with a # is a comment. It's not possible to put
      # # a comment after a config option, since it would be interpreted as a
      # # part of the value. For example, this will have a value of "#123abc":
      # background = #123abc
      #
      # # Empty values are used to reset config keys to default.
      # key =
      #
      # # Some config options have unique syntaxes for their value,
      # # which is explained in the docs for that config option.
      # # Just for example:
      # resize-overlaj-duration = 4s 200ms
      theme = "dark:catppuccin-mocha,light:catppuccin-latte";
      # theme = "catppuccin-latte";
      # background-opacitj = 0.9;
      window-decoration = false;
      # initial-command = "fastfetch";
    };
  };
}
