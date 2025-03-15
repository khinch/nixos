# nixos
My configs for NixOS
 
## Building/Installing
Checkout repo and set up symlink from /etc/nixos to the config for the system. E.g.  
``` bash
sudo mv /etc/nixos/configuration.nix /etc/nixos/configuration.original
sudo ln -s /home/<user>/projects/nixos/hosts/<host>/configuration.nix /etc/nixos/configuration.nix
cp /etc/nixos/hardware-configuration.nix */home/<user>/projects/nixos/hosts/<host>/hardware-configuration.nix
```

## dotfiles
Use `stow` to install dotfiles to home directory. E.g.
``` bash
cd dotfiles
stow alacritty
stow neovim
stow starship
stow yazi
```
To use `starship`, add it to `.bashrc`:
``` bash
eval "$(starship init bash)"
```

## Updates
``` bash
sudo nix-channel --update
sudo nixos-rebuild boot
```
(reboot)
``` bash
sudo nix-collect-garbage --delete-older-than 60d
sudo nix-store --optimise
```

## Upgrades
``` bash
sudo nix-channel --add https://channels.nixos.org/nixos-<version> nixos
sudo nix-channel --update
cd /etc/nixos
sudo nixos-rebuild boot
reboot
```

## Framework and Atrius
``` bash
$ sudo nix-channel --add https://github.com/NixOS/nixos-hardware/archive/master.tar.gz nixos-hardware
$ sudo nix-channel --update
```

## Citrix
If system requires Citrix, first download the required .tar.gz file and run the following command before the installation. Note that the version must match exactly the version listed on the nixos.org package.   
`nix-prefetch-url file:/path/to/file.tar.gz`  
