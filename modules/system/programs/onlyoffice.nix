{ pkgs, ... }: {
  system.userActivationScripts.copyAllFontsToLocalShare.text = ''
    rm -rf ~/.local/share/fonts
    mkdir -p ~/.local/share/fonts

    cp -r ${pkgs.corefonts}/share/fonts/truetype/* ~/.local/share/fonts/
    cp -r ${pkgs.noto-fonts}/share/fonts/noto/* ~/.local/share/fonts/
    cp -r ${pkgs.noto-fonts-cjk-sans}/share/fonts/noto-cjk/* ~/.local/share/fonts/
    cp -r ${pkgs.noto-fonts-emoji}/share/fonts/noto/* ~/.local/share/fonts/
    cp -r ${pkgs.noto-fonts-extra}/share/fonts/noto/* ~/.local/share/fonts/
    cp -r ${pkgs.smiley-sans}/share/fonts/* ~/.local/share/fonts/
    cp -r ${pkgs.wqy_microhei}/share/fonts/truetype/* ~/.local/share/fonts/
    cp -r ${pkgs.wqy_zenhei}/share/fonts/* ~/.local/share/fonts/
    cp -r ${pkgs.lxgw-wenkai}/share/fonts/* ~/.local/share/fonts/
    cp -r ${pkgs.sarasa-gothic}/share/fonts/truetype/* ~/.local/share/fonts/
    # cp -r ${pkgs.unifont}/share/fonts/* ~/.local/share/fonts/
    # cp -r ${pkgs.freefont_ttf}/share/fonts/* ~/.local/share/fonts/

    chmod -R a+r ~/.local/share/fonts
    find ~/.local/share/fonts -type d -exec chmod 755 {} \;
    fc-cache -f ~/.local/share/fonts
  '';
}
