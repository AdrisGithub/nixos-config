{ pkgs, ... }:
{
  home.packages = with pkgs; [
    neofetch
    vim
    pavucontrol
    #steam
    nodejs
    nitrogen
    firefox
    discord
    #obsidian
    #jetbrains.jdk
    #jetbrains.idea-ultimate
    #prismlauncher
  ];
}
