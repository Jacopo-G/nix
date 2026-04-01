{config, pkgs, ... }: {
	imports = [
		./hypr/hyprland.nix	
		./hypr/hyprlock.nix
		./audio.nix
		./bluetooth.nix
	];
}
