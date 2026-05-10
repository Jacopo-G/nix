{...}: {
  programs.starship = {
    enable = true;
    configPath = "nix/config/starship.toml";
    enableFishIntegration = true;
  };
}
