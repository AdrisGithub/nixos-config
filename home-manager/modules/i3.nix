{pkgs,...}:
{
	home.file.".xinitrc".text = "exec i3";
	xsession.windowManager.i3 = {
		enable = true;
		config = {
			modifier = "Mod4";
			terminal = "${pkgs.alacritty}/bin/alacritty";
			menu = "${pkgs.dmenu}/bin/dmenu_run";
			fonts = {
				names = [ "JetBrainsMono Nerd Font" ];
				style = "";
				size = 8.0;
			};
			gaps = {
				smartBorders = "no_gaps";
				smartGaps = "on";
				inner = 10;
			};
			window = {
				hideEdgeBorders = "smart";
				border = 0;
			};
			bars = [{
				position = "bottom";
				fonts = {
					names = [ "JetBrainsMono Nerd Font"];
					size = 7.5;
				};
				statusCommand = "${pkgs.i3status}/bin/i3status";
			}];
		};
	};
}
