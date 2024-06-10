{ pkgs, ... }:
{
  home.packages = with pkgs; [
    neofetch
    vim
    pavucontrol
    nitrogen
    firefox
    discord
    obsidian
    jetbrains.jdk
    jetbrains.idea-ultimate
    prismlauncher
  ];
}
