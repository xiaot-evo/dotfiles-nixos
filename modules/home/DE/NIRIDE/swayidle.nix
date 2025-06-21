{ pkgs, ... }:
{
  systemd.user.services.swayidle = {
    Unit = {
      Description = "Idle watcher";
      PartOf = [ "niri.service" ];
      After = [ "graphical-session.target" ];
      Requisite = [ "graphical-session.target" ];
    };
    Service = {
      ExecStart = ''
        ${pkgs.swayidle}/bin/swayidle -w \
          timeout 600 '${pkgs.swaylock}/bin/swaylock -f' \
          timeout 900 '${pkgs.niri}/bin/niri msg action power-off-monitors' \
          before-sleep '${pkgs.swaylock}/bin/swaylock -f'
      '';
      Restart = "on-failure";
    };
    Install = {
      WantedBy = [ "niri.service" ];
    };
  };
}
