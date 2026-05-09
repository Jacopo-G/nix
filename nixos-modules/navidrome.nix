{
  pkgs,
  config,
  lib,
  ...
}: {
  options.navidrome = {
    enable = lib.mkEnableOption "enables navidrome";
    musicFolder = lib.mkOption {
      type = lib.types.str;
      description = "Music folder location";
    };
    dataFolder = lib.mkOption {
      type = lib.types.str;
      description = "Data folder location";
    };
  };

  config = lib.mkIf config.navidrome.enable {
    services.navidrome = {
      enable = true;
      openFirewall = true;
      settings = {
        DefaultTheme = "Catppuccin Macchiato";
        Tags.Artist.Split = [";"];
        Tags.AlbumArtist.Split = [";"];
        LastFM.ApiKey = "4e2344c0868e956ff7e09eb7ca499023";
        LastFM.Secret = "be2ae746728f21a52e63eaba2aad6dac";
        Plugins.Enabled = true;
        Plugins.AutoReload = true;
        #Agents = "audiomuseai,lastfm,spotify,deezer";
        MusicFolder = config.navidrome.musicFolder;
        DataFolder = config.navidrome.dataFolder;
        Address = "0.0.0.0";
        Subsonic.DefaultReportRealPath = true;
      };
    };
    systemd.services.navidrome.serviceConfig.ProtectHome = lib.mkForce "tmpfs";
  };
}
