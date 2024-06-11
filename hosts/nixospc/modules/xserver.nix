{ pkgs, ... }:
{
  services = {
    greetd = {
      enable = true;
      settings = {
        default_session = {
          command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --cmd startx";
          user = "adri";
        };
      };
    };
    xserver = {
      displayManager.startx.enable = true;
      xkb = {
        layout = "de";
        variant = "";
      };
      enable = true;
    };
  };
  environment.systemPackages = with pkgs; [
    xclip
  ];
}
