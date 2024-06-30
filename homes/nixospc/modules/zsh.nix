{ config, pkgs, system, inputs, ... }: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    # enableAutosuggestions = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases =
      let
        flakeDir = "~/nix";
      in
      {
        nvim = "${inputs.nvim-adri.packages.${system}.default}/bin/nvim";
        nix-shell = "${pkgs.cached-nix-shell}/bin/cached-nix-shell";
        nrs = "sudo nixos-rebuild switch --flake ${flakeDir}#nixospc";
        nfu = "sudo nix flake update ${flakeDir}";
        "nix develop" = "nix develop -c $SHELL";
      };

    history.size = 10000;
    history.path = "${config.xdg.dataHome}/zsh/history";

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "sudo" ];
      theme = "robbyrussell";
    };
    plugins = [
    ];
  };
}
