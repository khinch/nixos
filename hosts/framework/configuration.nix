# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, lib, pkgs, ... }:

{
  imports = [
      <nixos-hardware/framework/13-inch/7040-amd>
      ./hardware-configuration.nix
      ../../core/core.nix
      ../../core/packages.nix
      ../../desktops/gnome
      # ../../desktops/hyprland
      ../../hardware/amd.nix
      ../../hardware/wifi.nix
      ../../modules/games.nix
      ../../modules/tools.nix
      ../../types/pc.nix
    ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Define your hostname.
  networking.hostName = "framework"; 

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users = {
    kieren = {
      isNormalUser = true;
      description = "Kieren Hinch";
      extraGroups = [ "networkmanager" "wheel" "scanner" "lp" "video" "kvm" ];
      packages = with pkgs; [
        dotool
        simplex-chat-desktop
      ];
    };
    vml = {
      isNormalUser = true;
      description = "Work account for VML contract";
      extraGroups = [ "networkmanager" ];
      packages = with pkgs; [
        slack
        teams-for-linux
      ];
    };
  };

  # PlayOnLinux
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  }; 

  # nixpkgs.config.permittedInsecurePackages = [
  #   "electron-25.9.0"
  # ];

  environment.systemPackages = [
    # pkgs.linuxKernel.kernels.linux_6_7
    pkgs.power-profiles-daemon
  ];
  # boot.kernelPackages = pkgs.linuxKernel.packages.linux_6_8;
  boot.kernelPackages = pkgs.linuxPackages_latest;

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
  # 33741 = simplex desktop
  # 25565 = minecraft
  networking.firewall.allowedTCPPorts = [ 33741 25565 ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "23.05"; # Did you read the comment?

}
