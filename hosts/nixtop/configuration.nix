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

  navidrome = {
    enable = true;
    musicFolder = "/home/alvino/Music/Library";
    dataFolder = "/home/alvino/Documents/navidrome_data";
  };

  environment.systemPackages = with pkgs; [
    mergerfs
  ];

  boot.extraModulePackages = with config.boot.kernelPackages; [
    v4l2loopback
  ];
  boot.extraModprobeConfig = ''
    options v4l2loopback devices=1 video_nr=1 card_label="OBS Cam" exclusive_caps=1
  '';
  security.polkit.enable = true;
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
  services.snapraid = {
    enable = true;
    parityFiles = [
      "/mnt/parity/snapraid.parity"
    ];
    contentFiles = [
      "/var/snapraid.content"
      "/mnt/disk/snapraid.content"
    ];
    dataDisks = {
      data1 = "/mnt/disk/";
    };
    exclude = [
      "/lost+found/"
    ];
  };
}
