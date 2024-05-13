{ pkgs, ...}:
{
	home.packages = with pkgs; [
		zellij
		neofetch
		vim
		nitrogen
		firefox
		discord
		jetbrains.jdk
		jetbrains.idea-ultimate
	];
}
