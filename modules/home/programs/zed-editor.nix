{ pkgs, ... }:

{
  programs.zed-editor = {
    enable = true;
    extensions = [ "hyprland" "nix" "v" "hyprlang" ];
    extraPackages = with pkgs; [
      nixd
      nixfmt-classic
      package-version-server
      hyprlang
    ];
    userKeymaps = {

    };
    userSettings = {
      lsp = {
        nixd = {
          settings = {
            diagnostic = {
              suppress = [ "sema-extra-with" ];

            };

          };
          initialization_option = {
            formatting = {
              command = [ "nixfmt" ];

            };

          };
        };
      };
      languages = {
        Nix = {
          language_servers = [ "nixd" "!nil" ];

        };

      };
      proxy = "http://127.0.0.1:7899";
      vim_mode = false;
      ui_font_size = 16;
      buffer_font_size = 16;
      theme = {
        mode = "system";
        light = "One Light";
        dark = "One Dark";
      };
      buffer_font_family = "JetBrains Mono";
    };
  };
}
