{ pkgs, ... }:
{
  home.packages = [ pkgs.xwayland-satellite-unstable ];
  systemd.user.services.xwayland-satellite-unstable-12 = {
    Unit = {
      Description = "Xwayland outside your Wayland";
      BindsTo = [ "graphical-session.target" ];
      PartOf = [ "graphical-session.target" ];
      After = [ "graphical-session.target" ];
      Requisite = [ "graphical-session.target" ];
    };

    Service = {
      # ⚠️ 关键：覆盖默认 ExecStart，加上 ":12"
      ExecStart = "${pkgs.xwayland-satellite-unstable}/bin/xwayland-satellite :12";
      Type = "notify";
      NotifyAccess = "all";
      StandardOutput = "journal";
    };

    Install = {
      # 🔁 开机用户登录时自动启动（相当于 enable --user）
      WantedBy = [ "niri.service" ];
    };
  };
}
