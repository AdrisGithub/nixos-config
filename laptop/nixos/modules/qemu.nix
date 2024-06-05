{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [ qemu gnome.gnome-boxes ];
  virtualisation.libvirtd.enable = true;
}
