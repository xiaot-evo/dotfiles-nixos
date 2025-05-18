{ ... }: {
  programs.helix = {
    enable = true;
    defaultEditor = true;
    settings = {
      theme = "nord";
      editor = {
        line-number = "relative";
        mouse = false;
        lsp.display-messages = true;
      };
      editor.cursor-shape = {
        insert = "bar";
        normal = "block";
        select = "underline";
      };
      editor.file-picker = { hidden = false; };
      keys.normal = {
        space.space = "file_picker";
        space.w = ":w";
        space.q = ":q";
        esc = [ "collapse_selection" "keep_primary_selection" ];
      };
    };
  };
}
