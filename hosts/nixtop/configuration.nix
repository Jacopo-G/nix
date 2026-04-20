{
  config,
  pkgs,
  ...
}: {
  imports = [
    ../../common-configuration.nix
    ./hardware-configuration.nix
  ];

  networking.hostName = "nixtop"; # Define your hostname.

  environment.systemPackages = with pkgs; [
    mergerfs
  ];

  # configure homelab filesystem with mergerfs and snapraid
  fileSystems = {
    "/mnt/parity" = {
      device = "/dev/disk/by-uuid/a1256996-7754-4523-a05d-9ba288dce485";
      fsType = "xfs";
    };
    "/mnt/disk" = {
      device = "/dev/disk/by-uuid/519ffef1-169e-4ac7-9b57-fcb925778f70";
      fsType = "xfs";
    };
    "/mnt/storage" = {
      device = "/mnt/disk";
      fsType = "fuse.mergerfs";
      options = ["cache.files=partial" "dropcacheonclose=true" "category.create=mfs" "fsname=mergerfs"];
    };
  };
}
