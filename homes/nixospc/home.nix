{ username, pkgs, ... }:
{

  home = {
    inherit username;
    homeDirectory = "/home/${username}";
    stateVersion = "24.05";
  };
  imports = [
    ./modules
  ];
  nixpkgs.config.allowUnfree = true;
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  home.packages = [ pkgs.discord ];

}
