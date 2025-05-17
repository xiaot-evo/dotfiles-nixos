{ inputs, settings, ... }:

{
  imports = [
    ../assets
    ./packages.nix

    ./hypr
    ./hyprpanel
    ./rofi.nix
    ./ags.nix

    ./zed-editor.nix
    ./helix.nix
    # ./gnome.nix
    ./git.nix
    ./gtk.nix
    ./fonts.nix
    ./fish
    ./alacritty.nix
    # ./starship.nix

  ];

  nixpkgs = {
    # You can add overlays here
    overlays = [
      inputs.hyprpanel.overlay

    ];
    # Configure your nixpkgs instance
    config = {
      # Disable if you don't want unfree packages
      allowUnfree = true;
    };
  };

  home.username = "${settings.username}";
  home.homeDirectory = "/home/${settings.username}";
  # home.shell.enableZshIntegration = true;
  # programs.fish.enable = true;
  programs.home-manager.enable = true;
  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";
  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "25.05";

}
