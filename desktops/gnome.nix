{ pkgs, ... }:

{
  services = {
    libinput = {
      enable =true;
      touchpad = {
        middleEmulation = true;
        naturalScrolling = false;
        tapping = true;
      };
    };

    xserver = {
      enable = true;
      desktopManager.gnome.enable = true;
      displayManager.gdm.enable = true;
      # displayManager.gdm.wayland = false; # Remove this to use wayland
      xkb = {
        layout = "gb";
        variant = "";
      };
    };
  };

  environment.gnome.excludePackages = (with pkgs; [
    gedit
    gnome-console
    gnome-tour
  ]) ++ (with pkgs.gnome; [
    atomix # puzzle game
    epiphany # web browser
    geary # email reader
    gnome-terminal
    gnome-weather
    hitori # sudoku game
    iagno # go game
    tali # poker game
    totem # video player
    yelp
  ]);

  environment.systemPackages = with pkgs; [ 
    ffmpegthumbnailer
    gnomeExtensions.appindicator 
    gnomeExtensions.dash-to-dock
    gnomeExtensions.forge
    gnomeExtensions.pop-shell
    gnomeExtensions.wayland-or-x11
    gnome.gnome-characters
    gnome.gnome-disk-utility
    gnome.gnome-tweaks 
    ];
  services.udev.packages = with pkgs; [ gnome.gnome-settings-daemon ];

  programs.nautilus-open-any-terminal = {
    enable = true;
    terminal = "alacritty";
  };

}
