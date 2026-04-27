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

  waybar.layout = "nixtop";
  cmus.enable = true;
  direnv.enable = true;

  home.packages = with pkgs; [
    # homelab stuff
    xfsprogs

    prismlauncher
  ];
}
