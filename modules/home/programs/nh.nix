{
  config,
  pkgs,
  settings,
  ...
}:
{
  programs.nh = {
    enable = true;
    clean.enable = true;
    clean.dates = "weekly";
    # clean.extraArgs = "--keep-since 4d --keep 3";
    flake = "/home/${settings.username}//NixOS";
  };
}
