{ config, pkgs, ... }:

let
  unstable = import (builtins.fetchTarball "https://github.com/NixOS/nixpkgs/archive/nixos-unstable.tar.gz") {
    config = config.nixpkgs.config;
  };
in

{
  environment.systemPackages = with pkgs; [
    aichat
    amberol
    audacity
    authenticator
    blender
    cherrytree
    darktable
    digikam
    displaycal
    distrobox
    drawing
    drawio
    eartag
    exiftool
    firefox
    font-manager
    freecad
    freefilesync
    gimp
    gnome-decoder
    gnome-graphs
    google-chrome
    gphoto2
    gtypist
    guvcview
    handbrake
    hugin
    keepassxc
    krename
    krita
    libdvdcss
    libreoffice
    losslesscut-bin
    makemkv
    megasync
    metadata-cleaner
    minder
    mpv
    obsidian
    pdfmixtool
    photocollage
    qrencode
    realesrgan-ncnn-vulkan
    scribus
    shutter
    spotify
    starship
    textpieces
    textsnatcher
    thunderbird
    transmission_4-gtk
    treesheets
    veracrypt
    video-trimmer
    vlc
    vscode
    webcamoid
    xfce.thunar
    xpano
    xournalpp
    yazi
    ydotool
    unstable.zed-editor
    zoom-us

    # Firewire 
    libraw1394
    libavc1394
    libdc1394
    libiec61883
    hw-probe
    dvgrab
  ];
}
