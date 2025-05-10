{ pkgs, inputs, ... }:

{
  home.packages = with pkgs; [
    ## cmd
    fastfetch
    git
    wget
    ## desktop
    clash-verge-rev
    gnome-extension-manager
    bilibili
    qq
    wechat-uos
    telegram-desktop
    onlyoffice-desktopeditors
    inputs.zen-browser.packages."${system}".twilight
    gnome-tweaks
    obs-studio
    # alacritty
    ## fonts
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-cjk-serif

    # sarasa-gothic  #更纱黑体
    smiley-sans
    hack-font
    source-code-pro
    jetbrains-mono
  ];
}
