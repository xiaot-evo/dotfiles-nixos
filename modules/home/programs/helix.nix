{ pkgs, ... }:
{
  programs.helix = {
    enable = true;
    # defaultEditor = true;
    extraPackages = with pkgs; [
      go
      gopls
      delve
    ];
    settings = {
      theme = "catppuccin_mocha";
      editor = {
        line-number = "absolute";
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
        space.w = ":w";
        space.q = ":q";
        esc = [
          "collapse_selection"
          "keep_primary_selection"
        ];
        # C-e = "scroll_down";
        # C-y = "scroll_up";
        C-e = [
          "scroll_down"
          "move_line_down"
        ];
        C-y = [
          "scroll_up"
          "move_line_up"
        ];
      };
      keys.insert = {
        "A-j" = "normal_mode";
      };
      keys.select = {
        "A-j" = "normal_mode";
      };
    };
    languages = {
      language = [
        {
          name = "nix";
          auto-format = true;
          formatter.command = "${pkgs.nixfmt-rfc-style}/bin/nixfmt";
          language-servers = [ "nixd" ];
        }
        {
          name = "go";
          # scope = "source.go";
          # injection-regex = "gp";
          # file-types = [ "go" ];
          # roots = [ "go.mod" ];
          auto-format = true;
          # comment-tokens = "//";
          language-servers = [ "gopls" ];
        }
      ];
      language-server = {
        nixd = {
          command = "${pkgs.nixd}/bin/nixd";
        };
        gopls = {
          command = "${pkgs.gopls}/bin/gopls";
        };
      };
      debugger = {
        name = "go";
        transport = "tcp";
        command = "${pkgs.delve}/bin/dlv";
      };
    };
  };
}
