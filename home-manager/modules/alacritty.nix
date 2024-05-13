{pkgs, ...}:
let 
	font_family = "JetBrainsMono Nerd Font";
in {
	programs.alacritty = {
		enable = true;
		settings = {
			shell = "${pkgs.zsh}/bin/zsh";
			window = {
				opacity = 0.7;
				blur = true;
				title = "Terminal";
			};
			cursor = {
				style = {
					shape = "Beam";
					blinking = "On";
				};
				unfocused_hollow = false;
				blink_timeout = 0;
			};
			mouse = {
				hide_when_typing = true;
			};
			env = {
				TERM = "xterm-256color";
			};
			font = {
				size = 14.0;
				bold = {
					family = font_family;
					style = "Bold";
				};
				bold_italic = {
					family = font_family;
					style = "Bold Italic";
				};
				italic = {
					family = font_family;
					style = "Italic"
				};
				normal = {
					family = font_family;
					style = "Bold"
				};
			};
		};
	};
}
