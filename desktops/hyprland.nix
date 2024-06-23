{ pkgs, ... }: 

{
  # services.xserver.displayManager.gdm.enable = true;
  services = {
    dbus.enable = true;
    gnome.gnome-keyring.enable = true;
    libinput = {
      enable =true;
      touchpad = {
        middleEmulation = true;
        naturalScrolling = false;
        tapping = true;
      };
    };
    
    displayManager.sddm = {
      enable = true;
      wayland.enable = true;
    };
  };

  programs.hyprland.enable = true;
  programs.hyprland.xwayland.enable = true;

  environment.systemPackages = with pkgs; [
    evince
    gnome-icon-theme
    gnome.gnome-calendar
    gnome.gnome-keyring
    kdePackages.qtwayland
    loupe
    networkmanagerapplet
    nwg-bar
    nwg-drawer
    nwg-launchers
    nwg-look #keep
    nwg-menu
    libsForQt5.qt5.qtwayland
    rofi-wayland
    swaybg
    swaynotificationcenter
    xdg-desktop-portal-gtk
    waybar
  ];

  fonts = {
    fontDir.enable = true;
    packages = with pkgs; [
      nerdfonts
      font-awesome
      google-fonts
    ];
  };

  xdg.portal = {
    enable = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-gtk
    ];
  };
}
