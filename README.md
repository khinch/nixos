# nixos
My configs for NixOS
 
## Building/Installing
Checkout repo and set up symlink from /etc/nixos to the config for the system. E.g.  
```
sudo mv /etc/nixos/configuration.nix /etc/nixos/configuration.original
sudo ln -s /home/kieren/projects/nixos/systems/<system>/configuration.nix /etc/nixos/configuration.nix
cp /etc/nixos/hardware-configuration.nix /home/kieren/projects/nixos/systems/<system>/hardware-configuration.nix
cd /etc/nixos
sudo nixos-rebuild
```

## Updates
```
sudo nix-collect-garbage --delete-older-than 60d
sudo nix-channel --update
sudo nixos-rebuild boot
```

## Upgrades
```
sudo nix-channel --add https://channels.nixos.org/nixos-<version> nixos
sudo nix-channel --update
cd /etc/nixos
sudo nixos-rebuild boot
reboot
```

## Framework and Atrius
```
$ sudo nix-channel --add https://github.com/NixOS/nixos-hardware/archive/master.tar.gz nixos-hardware
$ sudo nix-channel --update
```

## Citrix
If system requires Citrix, first download the required .tar.gz file and run the following command before the installation. Note that the version must match exactly the version listed on the nixos.org package.   
`nix-prefetch-url file:/path/to/file.tar.gz`  
