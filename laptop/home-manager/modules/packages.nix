{ pkgs, ... }:
{
  home.packages = with pkgs; [
    neofetch
    vim
    pavucontrol
    nitrogen
    firefox
    discord
    jetbrains.jdk
    jetbrains.idea-ultimate
  ];
}
