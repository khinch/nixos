{ pkgs, ... }:

{
  services.xserver = {
    enable = true;
    desktopManager.gnome.enable = true;
    displayManager.gdm.enable = true;
    displayManager.gdm.wayland = false; # Remove this to use wayland
    layout = "gb";
    libinput = {
      enable =true;
      touchpad = {
        middleEmulation = true;
        naturalScrolling = false;
        tapping = true;
      };
    };
    xkbVariant = "";
  };

  environment.gnome.excludePackages = (with pkgs; [
    gnome-console
    gnome-tour
]) ++ (with pkgs.gnome; [
  atomix # puzzle game
  epiphany # web browser
  geary # email reader
  gedit # text editor
  gnome-terminal
  gnome-weather
  hitori # sudoku game
  iagno # go game
  tali # poker game
  totem # video player
  yelp
]);

  environment.systemPackages = with pkgs; [ 
    gnomeExtensions.wayland-or-x11
    gnomeExtensions.appindicator 
    gnomeExtensions.dash-to-dock
    gnome.gnome-characters
    gnome.gnome-tweaks 
    ];
  services.udev.packages = with pkgs; [ gnome.gnome-settings-daemon ];

}