{ ... }:

{
  imports = [
    ./packages.nix
    ./zed-editor
    ./gnome
    ./git
    ./fonts

  ];

  home.username = "xiaoting";
  home.homeDirectory = "/home/xiaoting";
  # home.shell.enableZshIntegration = true;
  # programs.fish.enable = true;
  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "25.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
