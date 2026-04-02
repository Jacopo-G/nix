{
  config,
  pkgs,
  ...
}: {
  programs.librewolf = {
    enable = true;
    nativeMessagingHosts = [pkgs.keepassxc];
  };
}
