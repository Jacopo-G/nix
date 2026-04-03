{
  config,
  pkgs,
  inputs,
  ...
}: {
  programs.waybar = {
    enable = true;
    #    settings = [
    #      {
    #        mainBar = {
    #          layer = "top";
    #          position = "top";
    #          height = 30;
    #          modules-left = [];
    #          modules-center = ["hyprland/workspaces"];
    #          modules-right = ["mpd" "custom/mymodule#with-css-id" "temperature"];
    #
    #          "hyprland/workspaces" = {
    #            format = "";
    #            persistent-workspaces = {
    #              "*" = [1 2 3 4 5];
    #            };
    #          };
    #        };
    #      }
    #    ];
    #    style = ''
    #      * {
    #        font-family: "JetBrainsMono Nerd Font", sans-serif;
    #        font-size: 13px;
    #        min-height: 30px;
    #      }
    #
    #    '';
  };
}
