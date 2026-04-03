{
  config,
  pkgs,
  inputs,
  ...
}: {
  programs.waybar = {
    enable = true;
    settings = [
      {
        mainBar = {
          ### config inspired by sejjy/mechabar ###
          /*
             --------------
          LAYOUT
           --------------
          */
          modules-left = [
          ];
          modules-center = [
            "hyprland/workspaces"
          ];
          modules-right = [
            "mpd"
            "custom/mymodule#with-css-id"
            "temperature"
          ];
          layer = "top";
          position = "top";
          height = 30;

          "hyprland/workspaces" = {
            format = "{icon}";
            format-icons = {
              active = "";
              default = "";
            };
            persistent-workspaces = {
              "*" = 5;
            };
            on-click = "activate";
          };
        };
      }
    ];
    style = ''

      /* Defining Colors */

      /*
      br - border
      bg - background
      fg - foreground
      */

      /* Main colors */

      @define-color main-br        @subtext0;
      @define-color main-bg        @crust;
      @define-color main-fg        @text;
      @define-color hover-bg       @base;
      @define-color hover-fg       alpha(@main-fg, 0.75);
      @define-color outline        shade(@main-bg, 0.5);

      /* Module colors */

      @define-color workspaces     @mantle;
      @define-color temperature    @mantle;
      @define-color memory         @base;
      @define-color cpu            @surface0;
      @define-color time           @surface0;
      @define-color date           @base;
      @define-color tray           @mantle;
      @define-color volume         @mantle;
      @define-color backlight      @base;
      @define-color battery        @surface0;

      /* State colors */

      @define-color warning        @yellow;
      @define-color critical       @red;
      @define-color charging       @green;

      * {
      	font-family: "JetBrainsMono Nerd Font", sans-serif;
      	font-weight: bold;
      	font-size: 16px;
      }

      #waybar {
      	background-color: @outline;
      }
      #waybar > box {
      	margin: 4px;
      	background-color: @main-bg;
      }

      button {
      	border-radius: 16px;
      	min-width: 16px;
      	padding: 0 10px;
      }
      button:hover {
      	background-color: @hover-bg;
      	color: @hover-fg;
      }

      tooltip {
      	border: 2px solid @main-br;
      	border-radius: 10px;
      	background-color: @main-bg;
      }
      tooltip > box {
      	padding: 0 6px;
      }

    '';
  };
}
