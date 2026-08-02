{ pkgs, ... }:

{
  services = {
    blueman.enable = true;
    dbus.enable = true;
    gnome.gnome-keyring.enable = true;
    hardware.bolt = {
      enable = true;
    };
    libinput = {
      enable = true;
      touchpad = {
        middleEmulation = true;
        naturalScrolling = false;
        tapping = true;
      };
    };

    # USB flash drives
    udisks2.enable = true;
    gvfs.enable = true;

    displayManager = {
      gdm.enable = true;
      defaultSession = "hyprland-uwsm";
    };
  };

  environment.systemPackages = with pkgs; [
    adwaita-icon-theme
    blueman
    kdePackages.breeze-icons
    brightnessctl
    cava # CLI audio visualiser
    evince #pdf reader
    flameshot 
    gnome-icon-theme
    gnome-calendar
    gnome-keyring
    gnome-maps
    gnome-system-monitor
    grim
    gtk-engine-murrine #for old gtk themes
    hyprcursor
    hypridle
    hyprlock
    hyprpaper
    hyprshot
    imagemagick
    inxi
    kitty
    libadwaita
    libinput
    libnotify
    libsecret
    loupe # image viewer
    mousepad
    networkmanagerapplet
    nwg-look
    libsForQt5.qt5.qtwayland
    libsForQt5.qt5ct
    kdePackages.qt6ct
    kdePackages.qtstyleplugin-kvantum # kvantum for QT6 apps
    libsForQt5.qtstyleplugin-kvantum # kvantum for QT5 apps 
    pamixer
    playerctl
    polkit_gnome
    pyprland
    kdePackages.qtwayland
    rofi
    rofimoji
    slurp
    swappy # Snapshot editor
    swaynotificationcenter
    udiskie
    unzip
    wallust # Colour palettes from images
    waybar
    wlogout
    xarchiver
    xdg-desktop-portal-gtk
    yad
    yt-dlp

    # Candidates for removal
    ags #for Desktop overview
    cliphist # clipboard history. Look for an alternative that has exclusions
    eog # Eye of Gnome image viewer
  ];

  hardware = {
  	bluetooth = {
	    enable = true;
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
  	  withUWSM = true;
    };

	  waybar.enable = true;
	  hyprlock.enable = true;
	  firefox.enable = true;
	  git.enable = true;
    nm-applet.indicator = true;

	  thunar.enable = true;
	  thunar.plugins = with pkgs; [
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

  environment.sessionVariables = {
    NIXOS_OZONE_WL = "1";
  };

  security.pam.services.gdm.enableGnomeKeyring = true;
  # environment.variables.XDG_RUNTIME_DIR = "/run/usr/$UID"; # This breaks distrobox
  environment.variables.ELECTRON_OZONE_PLATFORM_HINT = "auto";

}
