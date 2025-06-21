{ pkgs, ... }:
let
  swaybgPath = "${pkgs.swaybg}/bin/swaybg";
in
{
  systemd.user.services.swaybg = {
    Unit = {
      Description = "Set wallpaper with swaybg";
      PartOf = [ "niri.service" ];
      After = [ "graphical-session.target" ];
      Requisite = [ "graphical-session.target" ];
    };
    Service = {
      ExecStart = "${swaybgPath} -m fill -i %h/Pictures/bg.png";
      Restart = "on-failure";
    };
    Install = {
      WantedBy = [ "niri.service" ];
    };
  };
}
