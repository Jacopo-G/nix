{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./theming/catppuccin.nix
    ./hypr/hyprland.nix
    ./hypr/hyprlock.nix
    ./audio.nix
    ./bluetooth.nix
    ./nvidia.nix
    ./steam.nix
    ./localsend.nix
  ];
}
