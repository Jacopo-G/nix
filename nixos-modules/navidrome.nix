{
  pkgs,
  config,
  lib,
  ...
}: {
  options.navidrome = {
    enable = lib.mkEnableOption "enables navidrome";
    folder = lib.mkOption {
      type = lib.types.str;
      description = "Music folder location";
    };
  };

  config = lib.mkIf config.navidrome.enable {
    services.navidrome = {
      enable = true;
      openFirewall = true;
      settings = {
        MusicFolder = config.navidrome.folder;
      };
    };
    systemd.services.navidrome.serviceConfig.ProtectHome = lib.mkForce "tmpfs";
  };
}
