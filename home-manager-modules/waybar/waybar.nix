{
  config,
  lib,
  ...
}: let
  modules = import ./config/modules/imports.nix;
  layouts = import ./config/layouts.nix;
  cfg = config.myModules.waybar;
in {
  options.myModules.waybar.layout = lib.mkOption {
    type = lib.types.str;
    default = "nixtop";
    description = "Waybar layout preset";
  };

  config = {
    # Deploy CSS files to config folder for access at runtime
    home.file.".config/waybar/styles/colors.css".source = ./config/styles/colors.css;
    home.file.".config/waybar/styles/modules-left.css".source = ./config/styles/modules-left.css;
    home.file.".config/waybar/styles/modules-center.css".source = ./config/styles/modules-center.css;
    home.file.".config/waybar/styles/modules-right.css".source = ./config/styles/modules-right.css;
    home.file.".config/waybar/styles/states.css".source = ./config/styles/states.css;

    programs.waybar = {
      enable = true;
      settings = [
        (modules // layouts.${cfg.layout})
      ];
      style = builtins.readFile ./config/styles/style.css;
    };
  };
}
