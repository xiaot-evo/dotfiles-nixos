{ inputs, pkgs, ... }: {
  imports = [
    ./DE/hyprland/hypr
    # ./DE/hyprland/hyprpanel
    ./DE/hyprland/rofi.nix
    ./DE/hyprland/ags.nix
    ./DE/hyprland/fonts.nix
    ./DE/hyprland/gtk.nix

    ./programs/zed-editor.nix
    ./programs/helix.nix
    ./programs/git.nix
    ./programs/fish.nix
    # ./programs/alacritty.nix
    ./programs/ghostty.nix
    # ./programs/starship.nix
  ];
  home.packages = with pkgs; [
    ## cmd
    fastfetch
    git
    wget
    yazi
    # inputs.Neve.packages.${system}.default
    ## desktop
    bilibili
    qq
    wechat-uos
    telegram-desktop
    onlyoffice-desktopeditors
    inputs.zen-browser.packages."${system}".twilight
    obs-studio
    motrix
    clash-verge-rev
    ## fonts
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-extra
    noto-fonts-color-emoji

    maple-mono.NF
    maple-mono.NF-CN

    nerd-fonts.hack
    nerd-fonts.jetbrains-mono
    source-code-pro
  ];
}
