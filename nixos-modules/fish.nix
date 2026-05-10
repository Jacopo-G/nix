{pkgs, ...}: {
  programs.fish = {
    enable = true;
    shellAbbrs = {
      rebuild = "sh ~/nix/scripts/rebuild.sh";
      update = "cd ~/nix && nix flake update && cd -";
    };
  };

  users.users.alvino.shell = pkgs.fish;
}
