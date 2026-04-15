{
  format = "󰸗 {:%d-%m}";
  min-length = 8;
  max-length = 8;
  tooltip = false;
  tooltip-format = "{calendar}";
  calendar = {
    mode = "month";
    mode-mon-col = 4;
    format = {
      months = "<span alpha='100%'><b>{}</b></span>";
      days = "<span alpha='90%'>{}</span>";
      weekdays = "<span alpha='80%'><i>{}</i></span>";
      today = "<span alpha='100%'><b>{}</b></span>";
    };
  };
  actions = {
    on-click = "mode";
  };
}
