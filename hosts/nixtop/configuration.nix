{config, pkgs, ...} : {
  imports = [
    ../../common-configuration.nix
    ./hardware-configuration.nix
  ];

  networking.hostName = "nixtop"; # Define your hostname.

}
