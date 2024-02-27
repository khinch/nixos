{ config, ... }:

{
  hardware.pulseaudio.enable = false;
  networking.networkmanager.enable = true;
  services = {
    flatpak.enable = true;
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
    };
    printing.enable = true;
    avahi = { # For printing
      enable = true;
      nssmdns = true;
      openFirewall = true;
    };
  };
  security.rtkit.enable = true;
  sound.enable = true;
}