{ pkgs, ... }:

{
  services.espanso.enable = true;
  services.espanso.package = pkgs.espanso-wayland;
  
  environment.systemPackages = with pkgs; [
    espanso-wayland
  ];
}
