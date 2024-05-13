{
	
	home = {
    		username = "adri";
    		homeDirectory = "/home/adri";
    		stateVersion = "23.11";
  	};
	imports = [
		./git.nix
		./zsh.nix
		./packages.nix
		./i3.nix
	];
	# Let Home Manager install and manage itself.
  	programs.home-manager.enable = true;
}
