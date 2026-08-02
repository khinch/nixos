{ pkgs, ... }:

{
  imports = [
      <nixos-hardware/framework/13-inch/7040-amd>
      ./hardware-configuration.nix
      ../../boot
      ../../core/core.nix
      ../../core/packages.nix
      ../../desktops/hyprland
      ../../hardware/egpu-amd.nix
      ../../hardware/wifi.nix
      ../../modules/games
      ../../modules/tools
      ../../scripts
      ../../types/pc.nix
    ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "framework"; 
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  users.users = {
    kieren = {
      isNormalUser = true;
      description = "Kieren Hinch";
      extraGroups = [ "networkmanager" "wheel" "scanner" "lp" "video" "input" "kvm" ];
      packages = with pkgs; [
        cpio # for unityhub
        dotool
        jetbrains.rider
        unityhub
      ];
    };
  };

  environment.systemPackages = [
    pkgs.power-profiles-daemon
    pkgs.tailscale
    pkgs.tailscale-systray
  ];
  boot.kernelPackages = pkgs.linuxPackages_latest;

  #tailscale
  services.tailscale = {
    enable = true;
    useRoutingFeatures = "client";
  };

  #syncthing
  services.syncthing = {
    enable = true;
    openDefaultPorts = true;
    user = "kieren";
    group = "users";
    dataDir   = "/home/kieren";
    configDir = "/home/kieren/.config/syncthing";
  };
  
  # List services that you want to enable:
  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # 25565 = minecraft
  networking.firewall.allowedTCPPorts = [ 25565 ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "25.11"; # Did you read the comment?

}
