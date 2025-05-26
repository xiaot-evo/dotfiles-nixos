{ ... }:
{
  programs.fish = {
    enable = true;
    generateCompletions = true;
    shellInit = ''
      set -g "fish_greeting" 
    '';
  };
}
