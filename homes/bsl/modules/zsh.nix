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
        nrs = "sudo nixos-rebuild switch --flake ${flakeDir}#nixoslaptop";
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
      {
        name = "zsh-nix-shell";
        file = "nix-shell.plugin.zsh";
        src = pkgs.fetchFromGitHub {
          owner = "chisui";
          repo = "zsh-nix-shell";
          rev = "v0.8.0";
          sha256 = "1lzrn0n4fxfcgg65v0qhnj7wnybybqzs4adz7xsrkgmcsr0ii8b7";
        };
      }
    ];
  };
}
