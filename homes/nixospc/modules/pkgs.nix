{ pkgs, ... }: {
  home.packages = with pkgs; [ firefox discord pavucontrol ];
}
