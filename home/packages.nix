{ pkgs, zen-browser, ... }:

{
  home.packages = with pkgs; [
    ## cmd
    fastfetch
    ## desktop
    clash-verge-rev
    gnome-extension-manager
    bilibili
    qq
    wechat-uos
    telegram-desktop
    onlyoffice-desktopeditors
    zen-browser.packages."${system}".default
    gnome-tweaks
    obs-studio
    ## fonts
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-cjk-serif

    # sarasa-gothic  #更纱黑体
    source-code-pro
    hack-font
    jetbrains-mono
  ];
}
