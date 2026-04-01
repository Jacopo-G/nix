{
  config,
  pkgs,
  inputs,
  ...
}: let
  spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.stdenv.system};
in {
  programs.spicetify = {
    enable = true;
    enabledExtensions = with spicePkgs.extensions; [
      adblockify
      hidePodcasts
      shuffle
      fullAppDisplay
    ];
    enabledCustomApps = with spicePkgs.apps; [
      newReleases
      lyricsPlus
    ];
    enabledSnippets = with spicePkgs.snippets; [
      hidePlayCount
    ];
    #theme = spicePkgs.themes.catppuccin;
    #colorScheme = "macchiato";
  };
}
