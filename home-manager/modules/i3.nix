{pkgs,...}:
{
	home.file.".xinitrc".text = "exec i3";
	xsession.windowManager.i3 = {
		enable = true;
	};
}
