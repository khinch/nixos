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
      ../../desktops/gnome.nix
      ../../hardware/amd.nix
      ../../modules/games.nix
      ../../modules/tools.nix
      ../../types/pc.nix
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
  users.users = {
    kieren = {
        isNormalUser = true;
        description = "Kieren Hinch";
        extraGroups = [ "networkmanager" "wheel" ];
        packages = with pkgs; [];
    };
    isla = {
      isNormalUser = true;
      description = "Isla Hinch";
      extraGroups = [];
      packages = with pkgs; [];
    };
  };

  services.xserver.displayManager.autoLogin = {
    enable = true;
    user = "isla";
  };

  # Hack to make Gnome auto-login work
  # https://github.com/NixOS/nixpkgs/issues/103746
  services.xserver.displayManager.job.preStart = "sleep 5";

  # Firewall for Minecraft
  networking.firewall.allowedTCPPorts = [ 25555 ];
  
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
