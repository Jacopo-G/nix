{pkgs, ...}: {
  services.udiskie = {
    enable = true;
    settings = {
      program_options = {
        # replace with your favorite file manager
        file_manager = "${pkgs.wezterm}/bin/wezterm -e ${pkgs.yazi}/bin/yazi";
      };
    };
  };
}
