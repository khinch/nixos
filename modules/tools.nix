{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    alacritty
    curl
    fatsort
    freefilesync
    fuse
    fuse3
    git
    gparted
    gsmartcontrol
    hardinfo
    htop
    hwinfo
    inotify-tools
    lf
    libsForQt5.ark
    lshw
    meld
    mount
    neofetch
    neovim
    nettools
    openssl
    pass
    pavucontrol
    pciutils
    pdfgrep
    rsync
    smartmontools
    tree
    usbutils
    vim
    wget
  ];
}
