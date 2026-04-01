{config, pkgs, inputs, ... }: {
	programs.keepassxc.enable = true;
	programs.keepassxc.autostart = true;
	programs.keepassxc.settings = {
		Browser.Enabled = true;
		Browser.UpdateBinaryPath = false;
		GUI = {
			ApplicationTheme = "dark";
		};

	};
}
