{
  "group/pulseaudio" = {
    orientation = "horizontal";
    modules = [
      "pulseaudio#output"
      "pulseaudio#input"
    ];
    drawer = {
      transition-left-to-right = false;
    };
  };

  "pulseaudio#output" = {
    format = "{icon} {volume}%";
    fomat-muted = "{icon} {volume}%";
    format-icons = {
      default = ["" "" ""];
      default-muted = "";
      headphone = "󰋋";
      headphone-muted = "󰟎";
      headset = "󰋎";
      headset-muted = "󰋐";
    };
    min-length = 7;
    max-length = 7;
    tooltip-format = "<b>Output Device</b>: {desc}";
    on-click = "wezterm -e pavucontrol";
  };

  "pulseaudio#input" = {
    format = "{format_source}";
    format-source = "󰍬 {volume}%";
    format-source-muted = "󰍭 {volume}%";
    min-length = 7;
    max-length = 7;
    on-click = "wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle";
    on-scroll-up = "wpctl set-volume @DEFAULT_AUDIO_SOURCE@ +0.05";
    on-scroll-down = "wpctl set-volume @DEFAULT_AUDIO_SOURCE@ -0.05";
    tooltip-format = "<b>Input Device</b>";
  };
}
