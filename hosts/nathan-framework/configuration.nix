{ pkgs, ... }:

{
  imports = [
      <nixos-hardware/framework/13-inch/7040-amd>
      ./hardware-configuration.nix
      ../../core/core.nix
      ../../core/packages.nix
      ../../desktops/gnome
      ../../hardware/wifi.nix
      ../../modules/games
      ../../modules/tools
      ../../types/pc.nix
    ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nathan-framework"; 

  users.users = {
    nathan = {
      isNormalUser = true;
      description = "Nathan Hinch";
      extraGroups = [ "networkmanager" "wheel" "scanner" "lp" "video" "kvm" ];
      packages = with pkgs; [
        megasync
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
