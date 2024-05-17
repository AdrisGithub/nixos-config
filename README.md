# Nixos Config for my laptop

## Notice
The hostname and username must be the same as in the Configuration 
and if not he configuration needs to be changed beforehand.
This can be done in the flake.nix file. 

Current Values: 
Hostname => nixoslaptop <br>
Username => adri


## Installation
```bash
git clone https://github.com/Andrey0189/nixos-config
mv nixos-config $HOME/nix # Config is supposed to be in the ~/nix directory
cd $HOME/nix
sudo nixos-rebuild switch --flake .
home-manager switch --flake .
```
