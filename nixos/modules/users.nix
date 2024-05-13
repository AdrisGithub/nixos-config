{pkgs, ...}:
{
	programs.zsh.enable = true;
	users.defaultUserShell = pkgs.zsh;
  	users.users.adri = {
    		isNormalUser = true;
    		description = "adri";
    		extraGroups = [ "networkmanager" "wheel" ];
  		packages = [];
	};
}
