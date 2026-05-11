{...}: {
  programs.starship = {
    enable = true;
    configPath = "nix/config/starship.toml";
    enableFishIntegration = true;
    settings = {
      add_newline = true;
      # Add more config here
    };
  };
}
