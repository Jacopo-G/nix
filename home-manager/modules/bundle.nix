{
  config,
  pkgs,
  inputs,
  ...
}: {
  imports = [
    ./theming/catppuccin.nix
    ./bash.nix
    ./spicetify.nix
    ./keepassxc.nix
    ./hypr/hyprpaper.nix
    ./hypr/hyprlock.nix
    ./hypr/hypridle.nix
    ./waybar/waybar.nix
    ./swaync/swaync.nix
    ./rofi.nix
    ./syncthing.nix
    ./git.nix
    ./alacritty.nix
    ./fzf.nix
    ./librewolf.nix
    ./neovim.nix
    ./btop/btop.nix
    ./yazi/yazi.nix
  ];
}
