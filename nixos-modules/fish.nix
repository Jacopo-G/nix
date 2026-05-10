{pkgs, ...}: {
  programs.fish = {
    enable = true;
  };

  users.users.alvino.shell = pkgs.fish;
}
