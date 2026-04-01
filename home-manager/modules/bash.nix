{
	programs.bash = {
		enable = true;
		shellAliases = {
			rebuild = "cd ~/nix && sudo nixos-rebuild switch --flake && cd -";
			update = "cd ~/nix && nix flake update && cd -";
		};
		profileExtra = ''
			if [ -z "$WAYLAND_DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
				exec start-hyprland 
			fi
		'';
	};
}
