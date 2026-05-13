{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./theming/catppuccin.nix
    ./hypr/hyprland.nix
    ./hypr/hyprlock.nix
    ./hypr/hypridle.nix
    ./audio.nix
    ./bluetooth.nix
    ./nvidia.nix
    ./steam.nix
    ./localsend.nix
    ./navidrome.nix
    ./tailscale.nix
    ./fish.nix
  ];
}
