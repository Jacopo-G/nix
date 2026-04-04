{
  interval = 10;
  format = "󰍛 {usage}%";
  format-warning = "⚠ {usage}%";
  format-critical = "󰀨 {usage}%";
  states = {
    warning = 75;
    critical = 90;
  };
  min-length = 8;
  max-length = 8;
  on-click = "exec btop";
}
