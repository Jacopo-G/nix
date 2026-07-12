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
  direnv.enable = false;
  beets.enable = true;

  home.packages = with pkgs; [
    # homelab stuff
    xfsprogs

    moonlight-qt
    prismlauncher
    puddletag
    picard
  ];
}
