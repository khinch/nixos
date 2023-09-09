# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, lib, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # nVidia
  hardware.nvidia.modesetting.enable = true;
  services.xserver.videoDrivers = [ "nvidia" ];
  hardware.nvidia.prime.sync.enable = true;
  hardware.nvidia.prime = {
    nvidiaBusId = "PCI:01:0:0";
    intelBusId = "PCI:00:02:0";
  };
  hardware.nvidia.nvidiaSettings = true;
   
  hardware.opengl.enable = true;
  hardware.opengl.driSupport32Bit = true;
  hardware.nvidia.powerManagement.enable = true;
  hardware.nvidia.package = config.boot.kernelPackages.nvidiaPackages.stable;

  services.flatpak.enable = true;  

  # trying to get nvidia working
  #boot.kernelPackages = pkgs.linuxPackages_latest;
  #boot.blacklistedKernelModules = ["nouveau"];
  #console.font = "latarcyrheb-sun32";

  # make sure opengl is enabled
  #hardware.opengl = {
  #  enable = true;
  #  driSupport = true;
  #  driSupport32Bit = true;
  #};

  # nvidia drivers are unfree
  #nixpkgs.config.allowUnfreePredicate = pkg:
  #  builtins.elem (lib.getName pkg) [
  #    "nvidia-x11"
  #    "nvidia-settings"
  #  ];

  # Tell xorg to use the nvidia driver
  #services.xserver.videoDrivers = ["nvidia"];

  #hardware.nvidia = {
    #Modesetting is needed for most wayland compositors
    #modesetting.enable = false;
    # enable the nvidia settings menu
    #nvidiaSettings = true;
  #};

  networking.hostName = "kratos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;

  #wifi
  networking.wireless.userControlled.enable = true;

  # Set your time zone.
  time.timeZone = "Europe/London";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_GB.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_GB.UTF-8";
    LC_IDENTIFICATION = "en_GB.UTF-8";
    LC_MEASUREMENT = "en_GB.UTF-8";
    LC_MONETARY = "en_GB.UTF-8";
    LC_NAME = "en_GB.UTF-8";
    LC_NUMERIC = "en_GB.UTF-8";
    LC_PAPER = "en_GB.UTF-8";
    LC_TELEPHONE = "en_GB.UTF-8";
    LC_TIME = "en_GB.UTF-8";
  };

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the Pantheon Desktop Environment.
  services.xserver.displayManager.lightdm.enable = true;
  services.xserver.desktopManager.pantheon.enable = true;

  # Configure keymap in X11
  services.xserver = {
    layout = "gb";
    xkbVariant = "";
  };

  # Configure console keymap
  console.keyMap = "uk";

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable sound with pipewire.
  sound.enable = true;
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
  };

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.kieren = {
    isNormalUser = true;
    description = "Kieren Hinch";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
    #  thunderbird
    ];
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
  #  vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
  #  wget
    pciutils
    usbutils
    lshw
    firefox
    git
    thunderbird
    cherrytree
    notepadqq
    mesa-demos
    prismlauncher
    fatsort
    google-chrome
    digikam
    handbrake
    vlc
    pavucontrol
    neovim
    nettools
    tree
    guvcview
    meld
    treesheets
    hwinfo
    hardinfo
    webcamoid
    inotify-tools
    exiftool
    scribus
    libsForQt5.k3b
    shotcut
    darktable
    pass
    telegram-desktop
    signal-desktop
    gphoto2
    pdfgrep
    gsmartcontrol
    smartmontools
    qrencode
    gtypist
    curl
    gcompris
    cherrytree
    ksnip
    flameshot
    shutter
    spotify
    veracrypt
    krename
    freefilesync
    joplin-desktop
    pdfmixtool
    xournalpp
    vscode
    rustup
    steam
    lutris
    dosbox
    keepassxc
    libdvdcss
    rsync
    displaycal
    neofetch
    alacritty
    xfce.thunar
    vim
    gimp
    ydotool
    discord
    transmission-gtk
    gparted
    gnome.gnome-disk-utility
    htop
    realesrgan-ncnn-vulkan
    openssl
    fuse
    fuse3
    fuse-common
    obsidian
    mount
  ];

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "23.05"; # Did you read the comment?

}
