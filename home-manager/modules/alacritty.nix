{
  config,
  pkgs,
  ...
}: {
  programs.alacritty = {
    enable = true;
    theme = "catppuccin_macchiato";
    settings = {
      font = {
        normal = {
          family = "JetBrainsMono Nerd Font";
          style = "Regular";
        };
      };
    };
  };
}
