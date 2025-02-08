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
  ]) ++ (with pkgs; [
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
    gnome-characters
    gnome-disk-utility
    gnome-tweaks 
    gnomeExtensions.appindicator 
    gnomeExtensions.dash-to-dock
    gnomeExtensions.forge
    gnomeExtensions.pop-shell
    gnomeExtensions.wayland-or-x11
    ];
  services.udev.packages = with pkgs; [ gnome-settings-daemon ];

  environment.sessionVariables = rec {
    GSK_RENDERER = "gl"; # Fix black borders: https://gitlab.gnome.org/GNOME/gtk/-/issues/6890
  };

  programs.nautilus-open-any-terminal = {
    enable = true;
    terminal = "alacritty";
  };

}
