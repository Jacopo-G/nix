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

  hardware.intelgpu = {
    computeRuntime = "legacy";
    vaapiDriver = "intel-media-driver";
  };

  services.fstrim.enable = lib.mkDefault true;

}
