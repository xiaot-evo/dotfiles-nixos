{ inputs, pkgs, ... }:
{
  imports = [
    ./DE/NIRIDE
    # ./DE/budgie

    programs/zed-editor.nix
    programs/neovide.nix
    programs/helix.nix
    programs/git.nix
    programs/fish.nix
    programs/ghostty.nix
    programs/direnv.nix
  ];
  home.packages = with pkgs; [
    ## cmd
    fastfetch
    git
    wget
    yazi
    devenv
    xwayland-satellite
    ## desktop
    bilibili
    qq
    wechat-uos
    telegram-desktop
    discord
    onlyoffice-desktopeditors
    inputs.zen-browser.packages."${pkgs.system}".twilight
    obs-studio
    clash-verge-rev
    # todesk
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
