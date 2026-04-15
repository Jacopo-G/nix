{
  programs.bash = {
    enable = true;
    shellAliases = {
      #rebuild = "~/nix/scripts/rebuild.sh";
      update = "cd ~/nix && nix flake update && cd -";
    };
    profileExtra = ''
      if [ -z "$WAYLAND_DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
      	exec start-hyprland
      fi
    '';
  };
}
