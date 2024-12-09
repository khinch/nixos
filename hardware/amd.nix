{ config, pkgs, ... }:

{
  # services.xserver.videoDrivers = [ "amdgpu" ];
  hardware.graphics = {
    # Mesa
    enable = true;

    # Vulkan
    enable32Bit = true;

    extraPackages = [ pkgs.amdvlk ];
    extraPackages32 = [ pkgs.driversi686Linux.amdvlk ];
  };
}