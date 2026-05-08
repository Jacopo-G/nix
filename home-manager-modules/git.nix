{
  config,
  pkgs,
  ...
}: {
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "Jacopo-G";
        email = "jacopo.galardi@gmail.com";
      };
      init.defaultBranch = "main";
    };
  };
}
