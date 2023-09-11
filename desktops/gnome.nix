{ pkgs, ... }:

{
  services.xserver = {
    enable = true;
    desktopManager.gnome.enable = true;
    displayManager.gdm.enable = true;
    layout = "gb";
    xkbVariant = "";
  };

  environment.gnome.excludePackages = (with pkgs; [
  gnome-tour
]) ++ (with pkgs.gnome; [
  gnome-terminal
  gedit # text editor
  epiphany # web browser
  geary # email reader
  gnome-characters
  totem # video player
  tali # poker game
  iagno # go game
  hitori # sudoku game
  atomix # puzzle game
]);

  environment.systemPackages = with pkgs; [ 
    gnomeExtensions.appindicator 
    gnome.gnome.tweaks 
    ];
  services.udev.packages = with pkgs; [ gnome.gnome-settings-daemon ];

}