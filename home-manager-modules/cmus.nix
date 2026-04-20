{
  pkgs,
  config,
  lib,
  ...
}: {
  options.cmus.enable = lib.mkEnableOption "enables cmus";

  config = lib.mkIf config.cmus.enable {
    programs.cmus.enable = true;
  };
}
