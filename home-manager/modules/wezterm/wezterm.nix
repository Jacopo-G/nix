{
  config,
  pkgs,
  ...
}: {
  programs.wezterm = {
    enable = true;
    extraConfig = ''
      config.window_background_opacity = 0.85
      config.hide_tab_bar_if_only_one_tab = true
      return config
    '';
  };
}
