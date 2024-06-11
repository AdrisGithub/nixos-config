{ pkgs, username, ... }:
{
  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;
  users.users.adri = {
    isNormalUser = true;
    description = username;
    extraGroups = [ "networkmanager" "wheel" ];
    packages = [ ];
  };
}
