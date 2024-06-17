{ pkgs, ... }: {
  home.packages = with pkgs;
    [
      steam
      firefox
      discord
      pavucontrol
      prismlauncher
    ];
}
