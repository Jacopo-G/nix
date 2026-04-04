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
            "hyprland/workspaces"
            "clock#time"
          ];
          modules-center = [
          ];
          modules-right = [
            "mpris"
          ];
          layer = "top";
          position = "top";
          height = 30;
        })
    ];
    style = builtins.readFile ./config/styles/style.css;
  };
}
