{
	programs.i3status = {
		enable = true;
		enableDefault = false;
		general = {
			colors = true;
			interval = 1;
		};
		modules = {
			"battery 0" = {
				position = 2;
				settings = {
					format = " %percentage";
				};
			};
			"wireless wlp5s0" = {
				position = 1;
				settings = {
					format_up = "  %essid: %bitrate";
        				format_down = "no:  ";
				};
			};
			"disk /" = {
				position = 3;
				settings = {
					format = " %avail";
				};
			};
			"memory" = {
				position = 4;
				settings = {
					format = "U: %used, F: %free";
				};
			};
			"tztime local" = {
				position = 5;
				settings = {
					format = "%Y-%m-%d %H:%M:%S";
				};
			};
		};
	};
}
