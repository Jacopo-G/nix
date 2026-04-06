{
  # MAIN
  "temperature" = import ./main/temperature.nix;
  "memory" = import ./main/memory.nix;
  "cpu" = import ./main/cpu.nix;
  "clock#time" = import ./main/clock-time.nix;
  "clock#date" = import ./main/clock-date.nix;
  "network" = import ./main/network.nix;
  "bluetooth" = import ./main/bluetooth.nix;
  "mpris" = import ./main/mpris.nix;
  # HYPR
  "hyprland/workspaces" = import ./hypr/workspaces.nix;
  # CUSTOM
  "custom/distro" = import ./custom/distro.nix;
  "custom/notification" = import ./custom/notification.nix;
  "custom/weather" = import ./custom/weather.nix;
}
// import ./custom/dividers.nix
// import ./main/pulseaudio.nix
// import ./custom/power.nix
