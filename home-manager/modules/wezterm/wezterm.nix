{
  config,
  pkgs,
  ...
}: {
  programs.wezterm = {
    enable = true;
    extraConfig = ''
      -- Pull in the wezterm API
      local wezterm = require 'wezterm'

      -- This will hold the configuration.
      local config = wezterm.config_builder()
      config.window_background_opacity = 0.85
      return config
    '';
  };
}
