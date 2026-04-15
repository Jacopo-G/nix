{
  config,
  lib,
  pkgs,
  ...
}: {
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
    localNetworkGameTransfers.openFirewall = true;
    gamescopeSession = {
      enable = true;

      env = {
        MANGOHUD = "1";
      };
    };
  };
  programs.gamemode.enable = true;
  programs.gamescope.enable = true;
}
