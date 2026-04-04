{
  config,
  lib,
  ...
}: let
  modules = import ./config/modules/imports.nix;
in {
  programs.waybar = {
    enable = true;
    settings = [
      (modules
        // {
          ### config inspired by sejjy/mechabar ###
          /*
             --------------
          LAYOUT
           --------------
          */
          modules-left = [
            "clock"
          ];
          modules-center = [
            "hyprland/workspaces"
          ];
          modules-right = [
            "mpris"
          ];
          layer = "top";
          position = "top";
          height = 30;

          "clock" = {
            format = "{:%H:%M}";
          };
        })
    ];
    style = builtins.toPath ./. + "/config/styles/style.css";
  };
}
