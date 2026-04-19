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

  myModules.waybar.layout = "nixtop";

  home.packages = with pkgs; [
    mergerfs
  ];
}
