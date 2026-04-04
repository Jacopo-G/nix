{
  interval = 10;
  format = "󰤨";
  format-ethernet = "󰈀";
  format-wifi = "{icon}";
  format-disconnected = "󰤯";
  format-disabled = "󰤮";
  format-icons = ["󰤟" "󰤢" "󰤥" "󰤨"];
  min-length = 3;
  max-length = 3;
  tooltip-format = "<b>Gateway</b>: {gwaddr}";
  tooltip-format-ethernet = "<b>Interface</b>: {ifname}";
  tooltip-format-wifi = "<b>Network</b>: {essid}\n<b>IP Addr</b>: {ipaddr}/{cidr}\n<b>Strength</b>: {signalStrength}%\n<b>Frequency</b>: {frequency} GHz";
  tooltip-format-disconnected = "Wi-Fi Disconnected";
  tooltip-format-disabled = "Wi-Fi Disabled";
}
