{ ... }:

{
  programs.fish = {
    enable = true;
    generateCompletions = true;
  };
  xdg.configFile = ./fish;
}
