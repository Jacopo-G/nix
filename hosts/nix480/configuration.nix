{config, pkgs, lib, ...} : {
  imports = [
    ../../common-configuration.nix
  ];

  networking.hostName = "nix480"; # Define your hostname.

  # nixos-hardware
  services.throttled.enable = lib.mkDefault true;

  boot.kernelParams = [
    "i915.enable_guc=2"
    "i915.enable_fbc=1"
    "i915.enable_psr=2"
  ];
  hardware.graphics = {
    extraPackages = with pkgs; [
      # Required for modern Intel GPUs (Xe iGPU and ARC)
      intel-media-driver     # VA-API (iHD) userspace
      vpl-gpu-rt             # oneVPL (QSV) runtime

      # Optional (compute / tooling):
      intel-compute-runtime  # OpenCL (NEO) + Level Zero for Arc/Xe
    ];
  };
  
  services.fstrim.enable = lib.mkDefault true;

}
