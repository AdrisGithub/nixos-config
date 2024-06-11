{
  description = "My laptop system configuration";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nvim-adri.url = "github:AdrisGithub/vim-config";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs = { self, nixpkgs, home-manager, nvim-adri, ... }@inputs:
    let
      system = "x86_64-linux";
    in
    {
      nixosConfigurations.nixoslaptop = nixpkgs.lib.nixosSystem rec {
        specialArgs = {
          inherit inputs system;
          username = "adri";
        };
        modules = [
          ./laptop/nixos/configuration.nix
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.${specialArgs.username} = import ./laptop/home-manager/home.nix;
            home-manager.extraSpecialArgs = specialArgs;
          }
        ];
      };
      #    homeConfigurations.adri = home-manager.lib.homeManagerConfiguration {
      #      pkgs = nixpkgs.legacyPackages.${system};
      #      modules = [ ./home-manager/home.nix ];
      #    };
    };
}
