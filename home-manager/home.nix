{
	
	home = {
    		username = "adri";
    		homeDirectory = "/home/adri";
    		stateVersion = "23.11";
  	};
	imports = [
		./bundle.nix
	];
	# Let Home Manager install and manage itself.
  	programs.home-manager.enable = true;
}
