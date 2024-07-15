{ pkgs, ... }:
{
  home.packages = with pkgs; [
    neofetch
    vim
    pavucontrol
    steam
    nitrogen
    firefox
    discord
    #obsidian
    #jetbrains.jdk
    #jetbrains.idea-ultimate
    #prismlauncher
  ];
}
