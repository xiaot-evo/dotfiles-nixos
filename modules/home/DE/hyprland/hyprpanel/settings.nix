{
  bar.launcher.autoDetectIcon = true;
  bar.workspaces.show_icons = true;
  layout = {
    "bar.layouts" = {
      "*" = {
        left = [ "dashboard" "workspaces" "windowtitle" ];
        middle = [ "media" ];
        right = [
          "volume"
          "network"
          "bluetooth"
          "battery"
          "systray"
          "clock"
          "notifications"
        ];
      };
    };
  };
  menus.clock = {
    time = {
      military = true;
      hideSeconds = true;
    };
    weather.unit = "metric";
  };

  menus.dashboard.directories.enabled = false;
  menus.dashboard.stats.enable_gpu = true;

  theme.bar.transparent = true;
  theme.bar.buttons.workspaces.fontSize = "1rem";
  theme.font = {
    name = "Maple Mono NF";
    size = "1rem";
  };
}
