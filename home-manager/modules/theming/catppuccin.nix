{
  config,
  pkgs,
  catppuccin,
  ...
}: {
  catppuccin = {
    enable = true;
    flavor = "macchiato";
    accent = "lavender";
    ### APPLICATION SPECIFIC DISABLES ###
    hyprlock.enable = false;
  };
}
