{
  "group/power" = {
    orientation = "inherit";
    drawer = {
      transition-duration = 300;
      children-class = "drawer-item";
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
  };

  "custom/reboot" = {
    format = "";
    tooltip = false;
    on-click = "systemctl reboot";
  };

  "custom/suspend" = {
    format = "";
    tooltip = false;
    on-click = "systemctl suspend";
  };

  "custom/hibernate" = {
    format = "";
    tooltip = false;
    on-click = "systemctl hibernate";
  };

  "custom/lock" = {
    format = "";
    tooltip = false;
    on-click = "hyprlock";
  };
}
