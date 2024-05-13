{ pkgs, ...}:
{
	home.packages = with pkgs; [
		zellij
		neofetch
		vim
	];
}
