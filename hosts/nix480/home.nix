{
  config,
  pkgs,
  inputs,
  ...
}: {
  imports = [
    ../../common-home.nix
  ];

  home.file.".config/hypr/hyprland.conf".source = ./config/hyprland.conf;

  waybar.layout = "nix480";
  direnv.enable = true;
}
