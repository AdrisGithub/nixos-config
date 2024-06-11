{ pkgs, lib, ... }:
{
  home.file.".xinitrc".text = ''exec i3'';
  xsession.windowManager.i3 = {
    enable = false;
    config = {
      modifier = "Mod4";
      terminal = "${pkgs.alacritty}/bin/alacritty";
      menu = "${pkgs.dmenu}/bin/dmenu_run";
      defaultWorkspace = "workspace number 1";
      fonts = {
        names = [ "JetBrainsMono Nerd Font" ];
        style = "";
        size = 8.0;
      };
      keybindings = lib.mkOptionDefault {
        "Mod4+Shift+s" = "exec ${pkgs.flameshot}/bin/flameshot gui";
      };
      startup = [
        {
          command = "${pkgs.nitrogen}/bin/nitrogen --restore";
        }
        {
          command = "${pkgs.picom}/bin/picom";
        }
        {
          command = "${pkgs.flameshot}/bin/flameshot";
        }
      ];
      gaps = {
        smartBorders = "no_gaps";
        smartGaps = true;
        inner = 10;
      };
      window = {
        hideEdgeBorders = "smart";
        border = 0;
        titlebar = false;
      };
      bars = [{
        position = "bottom";
        fonts = {
          names = [ "JetBrainsMono Nerd Font" ];
          size = 7.5;
        };
        statusCommand = "${pkgs.i3status}/bin/i3status";
      }];
    };
  };
}
