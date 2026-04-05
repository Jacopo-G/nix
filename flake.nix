{
  description = "System Config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    spicetify-nix = {
      url = "github:Gerg-L/spicetify-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    catppuccin = {
      url = "github:catppuccin/nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    millennium.url = "github:SteamClientHomebrew/Millennium?dir=packages/nix";
  };

  outputs = {
    nixpkgs,
    home-manager,
    spicetify-nix,
    catppuccin,
    millennium,
    ...
  } @ inputs: let
    system = "x86_64-linux";
    specialArgs = {inherit inputs;};
    pkgs = import nixpkgs {
      inherit system;
    };
  in {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      inherit system;
      modules = [
        {
          nixpkgs.overlays = [millennium.overlays.default];
        }
        ./nixos/configuration.nix

        catppuccin.nixosModules.catppuccin

        home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.extraSpecialArgs = specialArgs;
          home-manager.users.alvino = {
            imports = [
              ./home-manager/home.nix
              catppuccin.homeModules.catppuccin
            ];
          };
        }
      ];
    };
  };
}
