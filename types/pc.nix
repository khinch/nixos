{ config, pkgs, ... }:

{
  fonts.packages = with pkgs; [
    corefonts
    google-fonts
    nerdfonts
    noto-fonts
    vistafonts
  ];

  hardware.pulseaudio.enable = false;
  hardware.sane.enable = true;
  networking.networkmanager.enable = true;
  services = {
    flatpak.enable = true;
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
    };
    printing = {
      enable = true;
      drivers = [ pkgs.cups-kyocera-ecosys-m552x-p502x ];
    };
    avahi = {
      enable = true;
      nssmdns4 = true;
      openFirewall = true;
    };
  };
  security.rtkit.enable = true;

  virtualisation = {
    podman = {
      enable = true;
      dockerCompat = true;
      defaultNetwork.settings.dns_enabled = true;
    };
  };
}