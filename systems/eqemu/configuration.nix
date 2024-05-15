# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, lib, pkgs, ... }:

{
  imports =
    [ 
      <nixos-hardware/common/gpu/amd>
      ./hardware-configuration.nix
      ../../core/core.nix
      ../../modules/tools.nix
    ];

  # Bootloader.
  # boot.loader.systemd-boot.enable = true;
  # boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/sda";
  boot.loader.grub.useOSProber = true;

  # Define your hostname.
  networking.hostName = "steam-remote-play"; 

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.kieren = {
    isNormalUser = true;
    description = "Kieren Hinch";
    extraGroups = [ "wheel" "docker" ];
    packages = with pkgs; [];
  };

  environment.systemPackages = with pkgs; [
    docker
    docker-compose
  ];

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:
  # Enable the OpenSSH daemon.
  services.openssh.enable = true;
  services.openssh.settings.PermitRootLogin = "no";
  services.openssh.settings.AllowUsers = [ "kieren" ];
  services.openssh.openFirewall = true;

  # Open ports in the firewall.
  networking.firewall.allowedTCPPorts = [ 3000 5998 8081 9000 9001 ];
  networking.firewall.allowedTCPPortRanges = [
  { from = 7000; to = 7030; }
];

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