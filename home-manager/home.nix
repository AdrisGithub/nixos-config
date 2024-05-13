{config, pkgs, lib, ...}:
{
	
	config.home = {
    		username = "adri";
    		homeDirectory = "/home/adri";
    		stateVersion = "23.11";
  	};
	imports = [
		./modules/bundle.nix
	];
	config.allowUnfree = true;
	# Let Home Manager install and manage itself.
  	programs.home-manager.enable = true;
}
