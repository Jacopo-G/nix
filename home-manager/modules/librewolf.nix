{
  config,
  pkgs,
  ...
}: {
  programs.librewolf = {
    enable = true;
    nativeMessagingHosts = [pkgs.keepassxc];
    settings = {
      "privacy.clearOnShutdown_v2.cookiesAndStorage" = false;
    };
  };
}
