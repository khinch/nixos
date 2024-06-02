{ config, ... }:

{
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
    printing.enable = true;
  };
  security.rtkit.enable = true;
  sound.enable = true;
}