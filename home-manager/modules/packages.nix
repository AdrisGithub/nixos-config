{ pkgs, ...}:
{
	home.packages = with pkgs; [
		neofetch
		vim
		nitrogen
		firefox
		discord
		jetbrains.jdk
		jetbrains.idea-ultimate
	];
}
