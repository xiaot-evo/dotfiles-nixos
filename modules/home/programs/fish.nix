{ ... }:

{
  programs.fish = {
    enable = true;
    generateCompletions = true;
    # interactiveShellInit = ''
    #   starship init fish | source
    # '';
  };
}
