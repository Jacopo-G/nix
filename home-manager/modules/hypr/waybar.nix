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

        "hyprland/workspaces" = {
          format = "{icon}";
          format-icons = {
            active = "";
            default = "";
          };
          persistent-workspaces = {
            "*" = [1 2 3 4 5];
          };
          on-click = "activate";
          all-outputs = false;
        };
        "mpris" = {
          format = "{player_icon} {title} - {artist}";
          format-paused = "{status_icon} {title} - {artist}";
          tooltip-format = "Playing: {title} - {artist}";
          tooltip-format-paused = "Paused: {title} - {artist}";
          # on-click =
          # on-click-middle =
          # on-click-right =
          player-icons = {
            default = "";
          };
          status-icons = {
            paused = "";
          };
          max-length = 1000;
        };
      }
    ];
    style = ''

                    /* ---------------
                       Defining Colors
                --------------- */

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

                    /* ---------------
                           Styling
                --------------- */

               /* Main Style */

                    * {
                    	font-family: "JetBrainsMono Nerd Font", sans-serif;
                    	font-weight: bold;
                    	font-size: 16px;
      	all: initial;
      	color: @main-fg
                    }

      tooltip label {
      	font-weight: normal;
      }

                    #waybar {
                    	background-color: @outline;
      	border-radius: 8px;
                    }
                    #waybar > box {
                    	margin: 4px;
                    	background-color: @main-bg;
      	border-radius: 8px;
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

               /* ------- MODULE SPECIFIC --------- */

               /* Workspaces */

               #workspaces {
               	padding: 0 1px;
               	background-color: @workspaces;
               }

               #workspaces button.active label,
               #workspaces button.focused label {
               	color: @accent;
               }

          /* mpris */

          #mpris {
          	padding: 0 12px;
          }
    '';
  };
}
