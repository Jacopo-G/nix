{
  config,
  pkgs,
  ...
}: {
  programs.wezterm = {
    enable = true;
    extraConfig = ''
      config.window_background_opacity = 0.85
      return config
    '';
  };
}
