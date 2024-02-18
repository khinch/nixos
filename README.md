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

## Framework 13 AMD
```
$ sudo nix-channel --add https://github.com/NixOS/nixos-hardware/archive/master.tar.gz nixos-hardware
$ sudo nix-channel --update
```