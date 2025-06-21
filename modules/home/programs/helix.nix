{ pkgs, ... }:
{
  programs.helix = {
    enable = true;
    # defaultEditor = true;
    extraPackages = with pkgs; [
      nixd
      # go
      gopls
      delve
      typescript-language-server
      superhtml
      prettier
      vscode-langservers-extracted
    ];
    settings = {
      # theme = "catppuccin_mocha";
      theme = "catppuccin_latte";
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
          # formatter = {
          #   command = "${pkgs.go}/bin/gofmt";
          # };
          # comment-tokens = "//";
          language-servers = [ "gopls" ];
        }
        {
          name = "html";
          auto-format = true;
          formatter = {
            command = "${pkgs.prettier}/bin/prettier";
            args = [
              "--parser"
              "html"
            ];
          };
          # language-servers = [ "superhtml" ];
          language-servers = [
            {
              name = "superhtml";
              except-features = [ "format" ];
            }
            "vscode-html-language-server"
          ];
        }
        {
          name = "javascript";
          auto-format = true;
          language-servers = [ "typescript-language-server" ];
        }
        {
          name = "typescript";
          auto-format = true;
          language-servers = [ "typescript-language-server" ];
        }
      ];
      language-server = {
        nixd = {
          command = "${pkgs.nixd}/bin/nixd";
        };
        gopls = {
          command = "${pkgs.gopls}/bin/gopls";
          config.gofumpt = true;
        };
        typescript-language-server = {
          command = "${pkgs.typescript-language-server}/bin/typescript-language-server";
        };
        superhtml = {
          command = "${pkgs.superhtml}/bin/superhtml";
          args = [ "lsp" ];
        };
        vscode-html-language-server = {
          command = "${pkgs.vscode-langservers-extracted}/bin/vscode-html-language-server";
        };
      };
      debugger = [
        {
          name = "go";
          transport = "tcp";
          command = "${pkgs.delve}/bin/dlv";
        }
      ];
    };
  };
}
