{
  config,
  pkgs,
  ...
}: {
  programs.alacritty = {
    enable = true;
    theme = "catppuccin_macchiato";
    settings = {
    };
  };
}
