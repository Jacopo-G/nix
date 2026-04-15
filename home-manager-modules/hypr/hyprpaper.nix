{
  config,
  pkgs,
  inputs,
  ...
}: {
  services.hyprpaper.enable = true;
  services.hyprpaper.settings = {
    preload = [
      "/home/alvino/nix/config/hypr/hyprpaper/bluehour-recolorized.png"
    ];
    wallpaper = [
      {
        monitor = "";
        path = "/home/alvino/nix/config/hypr/hyprpaper/bluehour-recolorized.png";
      }
    ];
  };
}
