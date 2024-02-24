{ pkgs, ... }: 

{
  services.xserver.displayManager.gdm.enable = true;
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  environment.systemPackages = with pkgs; [
    evince
    rofi-wayland
  ];
}
