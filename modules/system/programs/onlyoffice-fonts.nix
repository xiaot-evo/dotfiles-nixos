{ pkgs, ... }: {
  # in configuration.nix

  # onlyoffice has trouble with symlinks: https://github.com/ONLYOFFICE/DocumentServer/issues/1859
  system.userActivationScripts = {
    copy-fonts-local-share = {
      text = ''
        rm -rf ~/.local/share/fonts
        mkdir -p ~/.local/share/fonts
        cp ${pkgs.corefonts}/share/fonts/truetype/* ~/.local/share/fonts/
        cp ${pkgs.noto-fonts}/share/fonts/opentype/noto/* ~/.local/share/fonts/
        cp ${pkgs.noto-fonts-cjk-sans}/share/fonts/opentype/noto-cjk/* ~/.local/share/fonts/
        chmod 544 ~/.local/share/fonts
        chmod 444 ~/.local/share/fonts/*
      '';
    };
  };
}
