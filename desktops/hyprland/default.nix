{ pkgs, ... }:

{
  # services.xserver.displayManager.gdm.enable = true;
  services = {
    # blueman.enable = true;
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

  # programs.hyprland.enable = true; # enabled further down
  # programs.hyprland.xwayland.enable = true; # enabled further down

  environment.systemPackages = with pkgs; [
    blueman
    brightnessctl
    evince #pdf reader
    gnome-icon-theme
    gnome-calendar
    gnome-keyring
    hypridle
    hyprlock
    hyprpaper
    hyprshot
    kdePackages.qtwayland
    kitty
    libnotify
    loupe # image viewer
    networkmanagerapplet
    # nwg-bar
    # nwg-drawer
    # nwg-launchers
    # nwg-look #keep
    # nwg-menu
    libsForQt5.qt5.qtwayland
    # rofi-wayland
    # swaybg
    starship
    swaynotificationcenter
    waybar
    wofi
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
    jq
    libsForQt5.qtstyleplugin-kvantum #kvantum
    nwg-look
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

  # xdg.portal = {
  #   enable = true;
  #   extraPortals = [
  #     pkgs.xdg-desktop-portal-gtk
  #   ];
  # };

  # JaKooLit
  # blueman.enable = true;
  hardware = {
  	bluetooth = {
	    enable = true;
	    powerOnBoot = true;
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
    #neovim.enable = true;

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
}
