{ pkgs, ... }:

{
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

    # USB flash drives
    udisks2.enable = true;
    gvfs.enable = true;

    xserver = {
      enable = true;
      displayManager.gdm = {
        enable = true;
        wayland = true;
      };
    };
  };

  environment.systemPackages = with pkgs; [
    adwaita-icon-theme
    blueman
    brightnessctl
    evince #pdf reader
    flameshot 
    gnome-icon-theme
    gnome-calendar
    gnome-keyring
    gnome-maps
    hyprcursor
    hypridle
    hyprlock
    hyprpaper
    hyprshot
    kdePackages.qtwayland
    kitty
    libnotify
    libsecret
    loupe # image viewer
    networkmanagerapplet
    nwg-look
    libsForQt5.qt5.qtwayland
    rofi-wayland
    swaynotificationcenter
    udiskie
    ueberzugpp
    waybar
    wl-clipboard
    xdg-desktop-portal-gtk
    xfce.mousepad

    # JaKooLit
    ags #for Desktop overview
    btop
    cava
    cliphist
    eog
    gnome-system-monitor
    grim
    gtk-engine-murrine #for gtk themes
    imagemagick
    inxi
    libsForQt5.qtstyleplugin-kvantum #kvantum
    nvtopPackages.full
    pamixer
    playerctl
    polkit_gnome
    pyprland
    libsForQt5.qt5ct
    kdePackages.qt6ct
    kdePackages.qtwayland
    kdePackages.qtstyleplugin-kvantum #kvantum
    rofi-wayland
    slurp
    swappy
    swww
    unzip
    wallust
    wl-clipboard
    wlogout
    xarchiver
    yad
    yt-dlp
  ];

  hardware = {
  	bluetooth = {
	    enable = true;
	    #powerOnBoot = true;
	    settings = {
		    General = {
		      Enable = "Source,Sink,Media,Socket";
		      Experimental = true;
		    };
      };
    };
  };

  programs = {
	  hyprland = {
      enable = true;
		  portalPackage = pkgs.xdg-desktop-portal-hyprland;
  	  xwayland.enable = true;
    };

	  waybar.enable = true;
	  hyprlock.enable = true;
	  firefox.enable = true;
	  git.enable = true;
    nm-applet.indicator = true;

	  thunar.enable = true;
	  thunar.plugins = with pkgs.xfce; [
		  exo
		  mousepad
		  thunar-archive-plugin
		  thunar-volman
		  tumbler
  	];

    xwayland.enable = true;

    dconf.enable = true;
    seahorse.enable = true;
    fuse.userAllowOther = true;
    mtr.enable = true;
    gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
    };
  };

  # Extra Portal Configuration
  xdg.portal = {
    enable = true;
    wlr.enable = false;
    extraPortals = [
      pkgs.xdg-desktop-portal-gtk
    ];
    configPackages = [
      pkgs.xdg-desktop-portal-gtk
      pkgs.xdg-desktop-portal
    ];
  };

  environment.sessionVariables = rec {
    GSK_RENDERER = "gl"; # Fix black borders: https://gitlab.gnome.org/GNOME/gtk/-/issues/6890
    NIXOS_OZONE_WL = "1";
  };

  security.pam.services.gdm.enableGnomeKeyring = true;
  # environment.variables.XDG_RUNTIME_DIR = "/run/usr/$UID"; # This breaks distrobox
  environment.variables.ELECTRON_OZONE_PLATFORM_HINT = "auto";

}
