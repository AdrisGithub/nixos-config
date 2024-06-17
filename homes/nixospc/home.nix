{ username, pkgs, config, ... }:
{

  home = {
    inherit username;
    homeDirectory = "/home/${username}";
    stateVersion = "24.05";
    sessionVariables = {
      GTK_THEME = "Catppuccin-Macchiato-Pink-Dark";
    };
    packages = with pkgs; [ dconf ];
  };
  imports = [
    ./modules
  ];
  nixpkgs.config.allowUnfree = true;
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  gtk = {
    enable = true;
    theme = {
      name = "Catppuccin-Macchiato-Pink-Dark";
      package = pkgs.catppuccin-gtk; #.override {
      #accents = [ "pink" ];
      #size = "standard";
      #tweaks = [ "rimless" "normal" "black" ];
      #variant = "frappe";
      #};
    };


    iconTheme = {
      package = pkgs.gnome.adwaita-icon-theme;
      name = "Adwaita";
    };

    gtk3.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };

    gtk4.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };
  };

  xdg.configFile = {
    "gtk-4.0/assets".source = "${config.gtk.theme.package}/share/themes/${config.gtk.theme.name}/gtk-4.0/assets";
    "gtk-4.0/gtk.css".source = "${config.gtk.theme.package}/share/themes/${config.gtk.theme.name}/gtk-4.0/gtk.css";
    "gtk-4.0/gtk-dark.css".source = "${config.gtk.theme.package}/share/themes/${config.gtk.theme.name}/gtk-4.0/gtk-dark.css";
  };


}
