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
  };

  outputs = {
    nixpkgs,
    home-manager,
    spicetify-nix,
    catppuccin,
    ...
  } @ inputs: let
    system = "x86_64-linux";
    specialArgs = {inherit inputs;};
  in {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      inherit system;
      modules = [
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
