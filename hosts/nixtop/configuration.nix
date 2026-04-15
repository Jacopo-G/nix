{config, pkgs, ...} : {
  imports = [
    ../../common-configuration.nix
    ../../nixos-modules/bundle.nix
  ];

  networking.hostName = "nixtop"; # Define your hostname.

}
