{ pkgs, ... }:

{
  programs.zed-editor = {
    enable = true;
    extensions = [
      # themes
      "catppuccin"
      "catppuccin-icons"

      # languages
      "nix"
      "html"
      "unocss"

    ];
    extraPackages = with pkgs; [
      nixd
      nixfmt-classic
    ];
    userSettings = {
      lsp = {
        nixd = {
          initialization_options = {
            formatting = {
              command = [ "nixfmt" ];
            };
          };
        };
      };
      languages = {
        Nix = {
          language_servers = [
            "nixd"
            "!nil"
          ];
        };
      };
      proxy = "http://127.0.0.1:7899";
      vim_mode = false;
      ui_font_size = 16;
      buffer_font_size = 16;
      theme = {
        mode = "system";
        light = "Cattpuccin Latte";
        dark = "Catppuccin Macchiato";
      };
      icon_theme = {
        mode = "system";
        light = "Cattpuccin Latte";
        dark = "Catppuccin Macchiato";
      };
      buffer_font_family = "JetBrains Mono NL";
    };
  };
}
