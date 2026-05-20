{...}: {
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting
    '';
    loginShellInit = ''
      if test -z "$WAYLAND_DISPLAY"; and test "$XDG_VTNR" = 1
        exec start-hyprland
      end
    '';
    shellAbbrs = {
      rebuild = "sh ~/nix/scripts/rebuild.sh";
      update = "cd ~/nix && nix flake update && cd -";
    };
  };
}
