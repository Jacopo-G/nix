{ config, pkgs, inputs, ... }: {
	home = {
		username = "alvino";
		homeDirectory = "/home/alvino";
		stateVersion = "26.05";

		packages = with pkgs; [
			# add user-specific packages
			hyprpaper
		];
	};
	home.file.".config/hypr/hyprland.conf".source = ../config/hypr/hyprland.conf;
	home.file.".config/hypr/macchiato.conf".source = ../config/hypr/macchiato.conf;
	xdg.autostart.enable = true;

	imports = [
		./modules/bundle.nix
		inputs.spicetify-nix.homeManagerModules.spicetify
	];
}
