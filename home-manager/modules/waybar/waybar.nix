{
  config,
  lib,
  ...
}: let
  modules = import ./config/modules/imports.nix;
in {
  # Deploy CSS files to config folder for access at runtime
  home.file.".config/waybar/styles/colors.css".source = ./config/styles/colors.css;
  home.file.".config/waybar/styles/modules-left.css".source = ./config/styles/modules-left.css;
  home.file.".config/waybar/styles/modules-center.css".source = ./config/styles/modules-center.css;
  home.file.".config/waybar/styles/modules-right.css".source = ./config/styles/modules-right.css;
  home.file.".config/waybar/styles/states.css".source = ./config/styles/states.css;

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
            "custom/notification"
            "custom/left_div#1"
            "hyprland/workspaces"
            "custom/right_div#1"
          ];
          modules-center = [
            "custom/left_div#4"
            "cpu"
            "custom/left_inv#1"
            "custom/left_div#5"
            "custom/distro"
            "custom/right_div#2"
            "custom/right_inv#1"
            "clock#time"
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
