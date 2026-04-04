{
  # MAIN
  "cpu" = import ./main/cpu.nix;
  "clock#time" = import ./main/clock-time.nix;
  "mpris" = import ./main/mpris.nix;
  # HYPR
  "hyprland/workspaces" = import ./hypr/workspaces.nix;
  # CUSTOM
  "custom/distro" = import ./custom/distro.nix;
  "custom/notification" = import ./custom/notification.nix;
}
// import ./custom/dividers.nix
