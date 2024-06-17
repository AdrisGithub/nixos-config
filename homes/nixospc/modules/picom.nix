{
  services.picom = {
    enable = true;
    shadow = true;
    fade = true;
    vSync = true;
    inactiveOpacity = 0.6;
    shadowExclude = [
      "window_type *= 'menu'"
      "name ~= 'Firefox$'"
      "focused = 1"
    ];
    settings = {
      focus-exclude = [
        "class_g = 'firefox'"
        "class_g = 'discord'"
      ];
    };
  };
}
