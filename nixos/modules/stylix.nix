{
  config,
  pkgs,
  ...
}: {
  stylix = {
    enable = true;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-macchiato.yaml";
    image = ../../config/hypr/hyprpaper/bluehour-colorized.png;
  };
}
