{ ... }:
let
  custom = {
    font = "Smiley Sans";
    font_size = "18px";
    font_weight = "bold";
    text_color = "#FBF1C7";
    background_0 = "#1D2021";
    background_1 = "#282828";
    border_color = "#928374";
    red = "#CC241D";
    green = "#98971A";
    yellow = "#FABD2F";
    blue = "#458588";
    magenta = "#B16286";
    cyan = "#689D6A";
    orange = "#D65D0E";
    opacity = "1";
    indicator_height = "2px";
  };
in {
  programs.waybar.settings = with custom; {
    mainBar = {
      layer = "top";
      position = "top";
      height = 28;
      spacing = 6;
      margin-top = 0;
      margin-bottom = 0;
      margin-left = 0;
      margin-right = 0;
      modules-left = [ "hyprland/workspaces" ];
      modules-center = [ ];
      modules-right = [ "tray" "network" "pulseaudio" "battery" "clock" ];
    };
    clock = {
      calendar = {
        format = { today = "<span color='#98971A'><b>{}</b></span>"; };
      };
      format = "  {:%H:%M}";
      tooltip = "true";
      tooltip-format = ''
        <big>{:%Y %B}</big>
        <tt><small>{calendar}</small></tt>'';
      format-alt = "  {:%d/%m}";
    };
    battery = {
      format = "<span foreground='${yellow}'>{icon}</span> {capacity}%";
      format-icons = [ " " " " " " " " " " ];
      format-charging = "<span foreground='${yellow}'> </span>{capacity}%";
      format-full = "<span foreground='${yellow}'> </span>{capacity}%";
      format-warning = "<span foreground='${yellow}'> </span>{capacity}%";
      interval = 5;
      states = { warning = 20; };
      format-time = "{H}h{M}m";
      tooltip = true;
      tooltip-format = "{time}";
    };
    "hyprland/workspaces" = {
      active-only = false;
      disable-scroll = true;
      format = "{icon}";
      on-click = "activate";
      format-icons = {
        "1" = "I";
        "2" = "II";
        "3" = "III";
        "4" = "IV";
        "5" = "V";
        "6" = "VI";
        "7" = "VII";
        "8" = "VIII";
        "9" = "IX";
        "10" = "X";
        sort-by-number = true;
      };
      persistent-workspaces = {
        "1" = [ ];
        "2" = [ ];
        "3" = [ ];
        "4" = [ ];
        "5" = [ ];
      };
    };
  };
}
