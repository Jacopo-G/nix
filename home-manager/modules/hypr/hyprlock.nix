{
  config,
  pkgs,
  ...
}: {
  programs.hyprlock = {
    enable = true;
    settings = {
      general = {
        hide_cursor = true;
        ignore_empty_input = true;
      };
      #animations = {
      #	enabled = true;
      #	fade_in = {
      #		duration = 300;
      #		bezier = "easeOutQuint";
      #	};
      #	fade_out = {
      #		duration = 300;
      #		bezier = "easeOutQuint";
      #	};
      #};
      background = [
        {
          path = "~/nix/config/hypr/hyprpaper/galaxy-waves-recolorized.png";
          blur_passes = 2;
          contrast = 1.3000;
        }
      ];
      input-field = [
        {
          size = "10%, 3%";
          position = "0, 120";
          monitor = "";
          dots_center = true;
          fade_on_empty = true;
          font_color = "rgb(202, 211, 245)";
          inner_color = "rgb(91, 96, 120)";
          outer_color = "rgb(91, 96, 120)";
          check_color = "rgb(183, 189, 248)";
          fail_color = "rgb(237, 135, 150)";
          fail_text = "";
          outline_thickness = 0;
          shadow_passes = 2;
          halign = "center";
          valign = "bottom";
          placeholder_text = "";
        }
      ];

      label = [
        ### MONITOR 1
        {
          monitor = "HDMI-A-1";
          text = "$TIME";
          font_size = 200;
          color = "rgb(183, 189, 248)";
          position = "0, -150";
          halign = "center";
          valign = "top";
        }
        {
          monitor = "HDMI-A-1";
          text = "Hi, $USER ;)";
          font_size = 80;
          color = "rgb(202, 211, 245)";
          halign = "center";
          valign = "center";
          position = "0, 100";
        }

        ### MONIITOR 2
        {
          monitor = "DP-1";
          text = "$TIME";
          font_size = 167;
          color = "rgb(183, 189, 248)";
          position = "0, -125";
          halign = "center";
          valign = "top";
        }
        {
          monitor = "DP-1";
          text = "Hi, $USER ;)";
          font_size = 67;
          color = "rgb(202, 211, 245)";
          halign = "center";
          valign = "center";
          position = "0, 83";
        }
      ];
    };
  };
}
