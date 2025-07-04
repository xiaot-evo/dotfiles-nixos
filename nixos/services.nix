{ pkgs, lib, ... }:

{
  # Enable sound.
  # hardware.pulseaudio.enable = true;
  # OR
  services.pipewire = {
    enable = true;
    pulse.enable = true;
    audio.enable = true;
    alsa.enable = true;
    jack.enable = true;
    wireplumber.enable = true;
  };
  services.xserver.enable = true;
  services.displayManager.sddm.enable = true;
  # services.xserver = {
  #   enable = true;
  #   displayManager.lightdm = {
  #     enable = true;
  #     greeters.slick.enable = false;
  #     greeters.gtk = {
  #       enable = true;
  #       iconTheme = {
  #         name = "Tela-nord-light";
  #         package = pkgs.tela-icon-theme;
  #       };
  #       cursorTheme = {
  #         name = "Bibata-Modern-Classic";
  #         package = pkgs.bibata-cursors;
  #         size = 20;
  #       };
  #       theme = {
  #         name = "Colloid-Light-Nord";
  #         package = (
  #           pkgs.colloid-gtk-theme.override {
  #             themeVariants = [ "default" ];
  #             colorVariants = [ "light" ];
  #             sizeVariants = [ "standard" ];
  #             tweaks = [
  #               "nord"
  #               "rimless"
  #               "normal"
  #             ];
  #           }
  #         );
  #       };
  #     };
  #   };
  # };
  # services.upower.enable = true;
  # Enable CUPS to print documents.
  services.printing.enable = true;
  # Enable touchpad support (enabled default in most desktopManager).
  services.libinput.enable = true;
  # powerManagement.powertop.enable = true;
  # services.power-profiles-daemon.enable = false;
  # services.tlp = {
  #   enable = true;
  #   settings = {
  #     CPU_SCALING_GOVERNOR_ON_AC = "performance";
  #     CPU_SCALING_GOVERNOR_ON_BAT = "powersave";
  #
  #     CPU_ENERGY_PERF_POLICY_ON_BAT = "power";
  #     CPU_ENERGY_PERF_POLICY_ON_AC = "performance";
  #
  #     CPU_MIN_PERF_ON_AC = 0;
  #     CPU_MAX_PERF_ON_AC = 100;
  #     CPU_MIN_PERF_ON_BAT = 0;
  #     CPU_MAX_PERF_ON_BAT = 20;
  #
  #     #Optional helps save long term battery health
  #     START_CHARGE_THRESH_BAT0 = 40; # 40 and below it starts to charge
  #     STOP_CHARGE_THRESH_BAT0 = 80; # 80 and above it stops charging
  #
  #   };
  # };
}
