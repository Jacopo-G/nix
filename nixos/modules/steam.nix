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

      args = [
        "-f"
        "-b"
        "-W"
        "2560"
        "-H"
        "1440"
        "--mangoapp"
      ];

      env = {
        MANGOHUD = "1";
      };
    };
  };
  programs.gamemode.enable = true;
  programs.gamescope.enable = true;
}
