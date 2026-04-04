{
  config,
  pkgs,
  ...
}: {
  services.swaync = {
    enable = true;
    settings = {
      widgets = ["mpris" "inhibitors" "title" "dnd" "notifications"];
    };
  };
}
