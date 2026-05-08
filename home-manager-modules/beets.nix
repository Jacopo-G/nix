{
  pkgs,
  config,
  lib,
  ...
}: {
  options.beets.enable = lib.mkEnableOption "enables beets";

  config = lib.mkIf config.beets.enable {
    programs.beets = {
      enable = true;
      settings = {
      };
    };
  };
}
