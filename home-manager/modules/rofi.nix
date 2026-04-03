{
  config,
  pkgs,
  inputs,
  ...
}: {
  programs.rofi = {
    enable = true;
    #theme = "Arc-Dark";
    font = "JetBrainsMono Nerd Font";
    modes = [
      "drun"
      "run"
      "window"
      "ssh"
    ];
    extraConfig = {
      show-icons = true;
    };
  };
}
