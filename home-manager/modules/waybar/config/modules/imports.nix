{
  # MAIN
  "mpris" = import ./main/mpris.nix;
  "clock#time" = import ./main/clock-time.nix;
  # HYPR
  "hyprland/workspaces" = import ./hypr/workspaces.nix;
  # CUSTOM
}
