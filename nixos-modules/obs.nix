{pkgs, ...}: {
  programs.obs-studio = {
    enable = true;
    plugins = [pkgs.obs-studio-plugins.droidcam-obs];
    enableVirtualCamera = true;
  };
}
