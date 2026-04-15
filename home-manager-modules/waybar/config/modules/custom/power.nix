{
  "group/power" = {
    orientation = "inherit";
    drawer = {
      transition-duration = 300;
      children-class = "items";
      transition-left-to-right = false;
    };
    modules = [
      "custom/power"
      "custom/lock"
      "custom/suspend"
      "custom/hibernate"
      "custom/reboot"
    ];
  };

  "custom/power" = {
    format = "";
    tooltip = false;
    on-click = "shutdown now";
    min-length = 2;
  };

  "custom/reboot" = {
    format = "";
    tooltip = false;
    on-click = "systemctl reboot";
    min-length = 2;
  };

  "custom/suspend" = {
    format = "";
    tooltip = false;
    on-click = "systemctl suspend";
    min-length = 2;
  };

  "custom/hibernate" = {
    format = "";
    tooltip = false;
    on-click = "systemctl hibernate";
    min-length = 2;
  };

  "custom/lock" = {
    format = "";
    tooltip = false;
    on-click = "hyprlock";
    min-length = 2;
  };
}
