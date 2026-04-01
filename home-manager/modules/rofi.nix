{
  config,
  pkgs,
  inputs,
  ...
}: {
  programs.rofi = {
    enable = true;
    #theme = "Arc-Dark";
    #font = "Droid Sans Mono 14";
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
