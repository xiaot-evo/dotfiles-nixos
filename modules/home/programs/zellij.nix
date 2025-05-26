{ ... }:
{
  programs.zellij = {
    enable = true;
    enableFishIntegration = true;
    themes = { };
    settings = {
      theme = "catppuccin-latte";
      # themes.custom.fg = "#ffffff";
    };
  };
}
