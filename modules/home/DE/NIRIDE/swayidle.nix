{ pkgs, ... }:
{
  home.packages = [ pkgs.swayidle ];
  systemd.user.services.swayidle = {
    Unit = {
      Description = "Idle monitor and locker";
      PartOf = [ "graphical-session.target" ]; # ✅ 保留
      After = [ "graphical-session.target" ];
      Requisite = [ "graphical-session.target" ];
    };

    Service = {
      ExecStart = "${pkgs.swayidle}/bin/swayidle -w timeout 601 'niri msg action power-off-monitors' timeout 600 'swaylock -f' before-sleep 'swaylock -f'";
      Restart = "on-failure";
    };

    Install = {
      WantedBy = [ "niri.service" ]; # ✅ 只随 niri 启动
    };
  };
}
