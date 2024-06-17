# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, lib, pkgs, ... }:

{
  imports = [
      <nixos-hardware/common/gpu/amd>
      ./hardware-configuration.nix
      ../../core/core.nix
      ../../core/packages.nix
      ../../desktops/gnome.nix
      ../../hardware/amd.nix
      ../../modules/games.nix
      ../../modules/tools.nix
      ../../types/pc.nix
    ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.kernelPackages = pkgs.linuxPackages_latest;

  # Define your hostname.
  networking.hostName = "atrius"; 

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users = {
    kieren = {
      isNormalUser = true;
      description = "Kieren Hinch";
      extraGroups = [ "networkmanager" "wheel" "scanner" "lp" ];
      packages = with pkgs; [
        dotool
      ];
    };
    vml = {
      isNormalUser = true;
      description = "Work account for VML contract";
      extraGroups = [ "networkmanager" ];
      packages = with pkgs; [
        slack
      ];
    };
  };

  services.printing.enable = true;
  # services.printing.drivers = [
  #   (writeTextDir "share/cups/model/Kyocera ECOSYS P5021cdn.ppd" (builtins.readFile ../../bin/Kyocera_ECOSYS_P5021cdn.PPD))

  # ];

  networking.hosts = {
    "192.168.5.83" = [ "KM3BCB84.local" "KM3BCB84" ];
  };


  # firewire card
  boot.kernelModules = [
    "firewire_core"
    "firewire_ohci"
  ];

  # fwupdmgr
  services.fwupd.enable = true;

  #vmware
  # virtualisation.vmware.host.enable = true;
  
  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:
  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "23.11"; # Did you read the comment?

}
