{ ... }: {
  wayland.windowManager.hyprland = {
    extraConfig =
      "\n      monitor=,preferred,auto,1\n\n      xwayland {\n        force_zero_scaling = true\n      }\n    ";
  };
}
