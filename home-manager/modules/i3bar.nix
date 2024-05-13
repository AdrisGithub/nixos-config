{
	programs.i3status = {
		enable = true;
		enableDefault = false;
		general = {
			colors = true;
			interval = 1;
		};
		modules = {
			"wireless wlan0" = {
				position = 1;
				settings = {
					format_up = "  %essid: %bitrate";
        				format_down = "no:  ";
				};
			};
			"disk /" = {
				position = 2;
				settings = {
					format = " %avail";
				};
			};
			"memory" = {
				position = 3;
				settings = {
					format = "U: %used, F: %free";
				};
			};
			"tztime local" = {
				position = 4;
				settings = {
					format = "%Y-%m-%d %H:%M:%S"
				};
			};
		};
	};
}
