{config, pkgs, ... }: {
	programs.git = {
		enable = true;
		settings = {
			user = {
				name = "JacopoG";
				email = "jacopo.galardi@gmail.com";

			};
			init.defaultBranch = "main";
		};
	};
}
