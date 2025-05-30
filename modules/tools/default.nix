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
    hardinfo2
    htop
    hwinfo
    inotify-tools
    jq
    lf
    libsForQt5.ark
    lshw
    meld
    mount
    neofetch
    neovim
    nettools
    ocrmypdf
    openssl
    pass
    pavucontrol
    pciutils
    pdfgrep
    rsync
    smartmontools
    stow
    tree
    ueberzugpp
    usbutils
    vim
    wget
    wl-clipboard
  ];
}
