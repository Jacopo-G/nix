{
  config,
  pkgs,
  inputs,
  ...
}: {
  home = {
    username = "alvino";
    homeDirectory = "/home/alvino";
    stateVersion = "26.05";

    sessionVariables = {
      BROWSER = "librewolf";
      TERMINAL = "wezterm";
      EDITOR = "nvim";
      VISUAL = "nvim";
    };

    packages = with pkgs; [
      # add user-specific packages
      catppuccin-cursors.macchiatoLavender
      hyprpaper
      libreoffice
      hunspell
      hunspellDicts.en_US
      nerd-fonts.jetbrains-mono
      playerctl
      jq
      wttrbar
      heroic
      udiskie
      feishin
      ffmpeg
    ];
  };
  home.file.".config/hypr/macchiato.conf".source = ./config/hypr/macchiato.conf;
  xdg.autostart.enable = true;

  fonts.fontconfig.enable = true;

  imports = [
    ./home-manager-modules/bundle.nix
    inputs.spicetify-nix.homeManagerModules.spicetify
    inputs.nvf.homeManagerModules.default
  ];
}
