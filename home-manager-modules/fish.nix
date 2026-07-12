{...}: {
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting
      devenv hook fish | source
    '';
    loginShellInit = ''
      if test -z "$WAYLAND_DISPLAY"; and test "$XDG_VTNR" = 1
        exec start-hyprland
      end
    '';
    shellAbbrs = {
      rebuild = "sh ~/nix/scripts/rebuild.sh";
      update = "cd ~/nix && nix flake update && cd -";
      lsa = "ls -a";
      gs = "git status";
      ga = "git add .";
      gc = "git commit -m";
      gp = "git push -u origin";
    };
  };
}
