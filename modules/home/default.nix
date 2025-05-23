{ inputs, pkgs, ... }: {
  imports = [
    DE/hyprland/hypr
    DE/hyprland/rofi.nix
    DE/hyprland/ags.nix
    DE/hyprland/theme.nix

    programs/zed-editor.nix
    programs/helix.nix
    programs/git.nix
    programs/fish.nix
    # programs/alacritty.nix
    programs/ghostty.nix
    # programs/starship.nix
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
    # libreoffice-qt6-fresh
    inputs.zen-browser.packages."${system}".twilight
    obs-studio
    motrix
    clash-verge-rev
    ## fonts
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-extra
    noto-fonts-color-emoji

    wqy_zenhei
    wqy_microhei
    lxgw-wenkai
    sarasa-gothic

    maple-mono.NF
    maple-mono.NF-CN
    smiley-sans

    nerd-fonts.hack
    nerd-fonts.jetbrains-mono
    source-code-pro
  ];
}
