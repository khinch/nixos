# nixos
My configs for NixOS

## Building/Installing
Checkout repo and set up symlink from /etc/nixos to the config for the system. E.g.  
```
sudo ln -s /home/kieren/projects/nixos/systems/kratos/configuration.nix /etc/nixos/configuration.nix
cd /etc/nixos
sudo nixos-rebuild
```

