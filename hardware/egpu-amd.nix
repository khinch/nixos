{ pkgs, ... }:

{
  boot.initrd.kernelModules = [ "amdgpu" "thunderbolt" "usbhid" ];
  services.xserver.videoDrivers = [ "amdgpu" ];
  environment.systemPackages = with pkgs; [
    (writeShellScriptBin "egpu-run" ''
      export DRI_PRIME=1
      exec "$@"
    '')
  ];
}
