{ pkgs, ... }:
let
  font_family = "JetBrainsMono Nerd Font";
in
{
  programs.alacritty = {
    enable = true;
    settings = {
      shell = "${pkgs.zsh}/bin/zsh";
      window = {
        opacity = 0.7;
        blur = true;
        title = "Terminal";
      };
      cursor = {
        style = {
          shape = "Beam";
          blinking = "On";
        };
        unfocused_hollow = false;
        blink_timeout = 0;
      };
      mouse = {
        hide_when_typing = true;
      };
      env = {
        TERM = "xterm-256color";
      };
      font = {
        size = 9.0;
        bold = {
          family = font_family;
          style = "Bold";
        };
        bold_italic = {
          family = font_family;
          style = "Bold Italic";
        };
        italic = {
          family = font_family;
          style = "Italic";
        };
        normal = {
          family = font_family;
          style = "Bold";
        };
      };
      colors = {
        primary = {
          background = "#1e1e2e";
          foreground = "#cdd6f4";
          dim_foreground = "#7f849c";
          bright_foreground = "#cdd6f4";
        };
        cursor = {
          text = "#1e1e2e";
          cursor = "#f5e0dc";
        };
        vi_mode_cursor = {
          text = "#1e1e2e";
          cursor = "#b4befe";
        };
        search = {
          matches = {
            foreground = "#1e1e2e";
            background = "#a6adc8";
          };
          focused_match = {
            foreground = "#1e1e2e";
            background = "#a6e3a1";
          };
        };
        footer_bar = {
          foreground = "#1e1e2e";
          background = "#a6adc8";
        };
        hints = {
          start = {
            foreground = "#1e1e2e";
            background = "#f9e2af";
          };
          end = {
            foreground = "#1e1e2e";
            background = "#a6adc8";
          };
        };
        selection = {
          text = "#1e1e2e";
          background = "#f5e0dc";
        };
        normal = {
          black = "#45475a";
          red = "#f38ba8";
          green = "#a6e3a1";
          yellow = "#f9e2af";
          blue = "#89b4fa";
          magenta = "#f5c2e7";
          cyan = "#94e2d5";
          white = "#bac2de";
        };
        bright = {
          black = "#585b70";
          red = "#f38ba8";
          green = "#a6e3a1";
          yellow = "#f9e2af";
          blue = "#89b4fa";
          magenta = "#f5c2e7";
          cyan = "#94e2d5";
          white = "#a6adc8";
        };
        dim = {
          black = "#45475a";
          red = "#f38ba8";
          green = "#a6e3a1";
          yellow = "#f9e2af";
          blue = "#89b4fa";
          magenta = "#f5c2e7";
          cyan = "#94e2d5";
          white = "#bac2de";
        };
      };
    };
  };
}
