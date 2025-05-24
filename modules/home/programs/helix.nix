{ pkgs, ... }:
{
  programs.helix = {
    enable = true;
    defaultEditor = true;
    settings = {
      theme = "catppuccin_latte";
      editor = {
        line-number = "relative";
        mouse = false;
        cursorline = true;
        cursorcolumn = true;
        bufferline = "multiple";
        color-modes = true;
        lsp.display-messages = true;
      };
      editor.statusline = {
        left = [
          "mode"
          "spinner"
        ];
        center = [ "file-name" ];
        right = [
          "diagnostics"
          "selections"
          "position"
          "file-encoding"
          "file-line-ending"
          "file-type"
        ];
        separator = "│";
        mode.normal = "NORMAL";
        mode.insert = "INSERT";
        mode.select = "SELECT";
      };
      editor.cursor-shape = {
        insert = "bar";
        normal = "block";
        select = "underline";
      };
      editor.file-picker = {
        hidden = false;
      };
      keys.normal = {
        space.space = "file_picker";
        space.w = ":w";
        space.q = ":q";
        esc = [
          "collapse_selection"
          "keep_primary_selection"
        ];
      };
      keys.insert = {
        "A-k" = "normal_mode";
      };
    };
    languages = {
      language-server.nixd = {
        command = "${pkgs.nixd}/bin/nixd";
        # args = [ "--stdio" "--tsserver-path=${typescript}/lib/node_modules/typescript/lib" ];
      };
      language = [
        {
          name = "nix";
          formatter.command = "${pkgs.nixfmt-rfc-style}/bin/nixfmt";
          language-servers = [ "nixd" ];
          auto-format = true;
        }
        # {
        #   name = "go";
        #   formatter.command = "${pkgs.gopls}/bin/gopls";
        #   language-severs = [ "gopls" ];
        # }
      ];
    };
  };
}
