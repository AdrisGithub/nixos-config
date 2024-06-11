{ config, pkgs, lib, nvim-adri, ... }:
{

  home = {
    username = "adri";
    homeDirectory = "/home/adri";
    stateVersion = "24.05";
  };
  imports = [
    ./modules
  ];
  home.packages = [
	(import nvim-adri { inherit pkgs; }).nvim	
];
  nixpkgs.config.allowUnfree = true;
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
