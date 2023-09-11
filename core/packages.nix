{ config, pkgs, ... }:

{
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
  #  vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    alacritty
    cherrytree
    curl
    darktable
    digikam
    discord
    displaycal
    dosbox
    exiftool
    fatsort
    firefox
    flameshot
    freefilesync
    fuse
    fuse3
    fuse-common
    gcompris
    gimp
    git
    gnome.gnome-disk-utility
    google-chrome
    gparted
    gphoto2
    gsmartcontrol
    gtypist
    guvcview
    handbrake
    hardinfo
    htop
    hwinfo
    inotify-tools
    joplin-desktop
    keepassxc
    krename
    ksnip
    libdvdcss
    libsForQt5.k3b
    lshw
    lutris
    meld
    mesa-demos
    mount
    neofetch
    neovim
    nettools
    notepadqq
    obsidian
    openssl
    pass
    pavucontrol
    pciutils
    pdfgrep
    pdfmixtool
    prismlauncher
    qrencode
    realesrgan-ncnn-vulkan
    rsync
    rustup
    scribus
    shotcut
    shutter
    signal-desktop
    smartmontools
    spotify
    steam
    telegram-desktop
    thunderbird
    transmission-gtk
    tree
    treesheets
    usbutils
    veracrypt
    vim
    vlc
    vscode
    webcamoid
    wget
    xfce.thunar
    xournalpp
    ydotool
  ];
}