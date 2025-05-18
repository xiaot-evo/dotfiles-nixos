{ inputs, pkgs, ... }: {
  imports = [
    ./DE/hyprland/hypr
    ./DE/hyprland/hyprpanel
    ./DE/hyprland/rofi.nix
    ./DE/hyprland/ags.nix
    ./DE/hyprland/fonts.nix
    ./DE/hyprland/gtk.nix

    ./programs/zed-editor.nix
    ./programs/helix.nix
    ./programs/git.nix
    ./programs/fish.nix
    ./programs/alacritty.nix
    # ./programs/starship.nix
  ];
  home.packages = with pkgs; [
    ## cmd
    fastfetch
    git
    wget
    ## desktop
    clash-verge-rev
    bilibili
    qq
    wechat-uos
    telegram-desktop
    onlyoffice-desktopeditors
    inputs.zen-browser.packages."${system}".twilight
    obs-studio
    motrix
    # alacritty
    ## fonts
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-cjk-serif

    # sarasa-gothic  #更纱黑体
    smiley-sans
    maple-mono.NF
    maple-mono.NF-CN
    nerd-fonts.hack
    source-code-pro
    jetbrains-mono
  ];
}
