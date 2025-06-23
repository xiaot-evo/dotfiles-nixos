{ pkgs, ... }:
{
  programs.mpvpaper = {
    enable = true;
    package = pkgs.mpvpaper;
    pauseList = " ";
    stopList = " ";
  };
}
