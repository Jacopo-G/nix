{
  config,
  pkgs,
  inputs,
  ...
}: {
  imports = [
    ./bash.nix
    ./spicetify.nix
    ./keepassxc.nix
    ./hypr/hyprpaper.nix
    ./hypr/waybar.nix
    ./hypr/hyprlock.nix
    ./hypr/hypridle.nix
    ./rofi.nix
    ./syncthing.nix
    ./git.nix
  ];
}
