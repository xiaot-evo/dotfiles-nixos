{ pkgs, ... }: {
  programs.zen-browser = {
    enable = true;
    policies = {
      DisableAppUpdate = true;
      DisableTelemetry = true;
      # find more options here: https://mozilla.github.io/policy-templates/
      nativeMessagingHosts = [ pkgs.firefoxpwa ];
    };
  };
}
