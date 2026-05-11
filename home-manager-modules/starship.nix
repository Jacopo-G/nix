{...}: {
  programs.starship = {
    enable = true;
    configPath = ".config/starship/starship.toml";
    enableFishIntegration = true;
    settings = {
      add_newline = true;
      # Add more config here
    };
  };
}
