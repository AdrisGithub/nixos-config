{ pkgs, ...}:
{
	home.packages = with pkgs; [
		zellij
		flameshot
		neofetch
		vim
		nitrogen
		firefox
		discord
		jetbrains.jdk
		jetbrains.idea-ultimate
	];
}
