{ ... }: {
  programs.fastfetch = {
    enable = true;
    settings = {
      logo = {
        type = "small";
        source = "nixos";
        # width = 65;
        # height = 35;
        padding = {
          top = 3;
          left = 0;
          right = 3;
        };
      };
      display = { separator = " •  "; };
      modules = [
        "break"
        "break"
        {
          type = "title";
          color = {
            user = "36";
            at = "34";
            host = "36";
          };
        }
        "break"
        {
          type = "os";
          key = "distribution   ";
          keyColor = "32";
        }
        {
          type = "kernel";
          key = "linux kernel   ";
          keyColor = "32";
        }
        {
          type = "packages";
          # format = "{}";
          key = "packages       ";
          keyColor = "32";
        }
        {
          type = "shell";
          key = "unix shell     ";
          keyColor = "32";
        }
        {
          type = "terminal";
          key = "terminal       ";
          keyColor = "32";
        }
        {
          type = "wm";
          format = "{} ({3})";
          key = "window manager ";
          keyColor = "32";
        }
        "break"
        {
          type = "colors";
          symbol = "circle";
        }
        "break"
        "break"
      ];

    };

  };
}
