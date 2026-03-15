{ config, pkgs, ... }:

let
  unstable = import (builtins.fetchTarball {
    # nixos-unstable at some chosen commit
    url = "https://github.com/NixOS/nixpkgs/archive/d6c71932130818840fc8fe9509cf50be8c64634f.tar.gz";
    sha256 = "1klgyhj98j3gfsql5sn9rapyx62qk5g8adk5zh9mnc4d0fj61gdr";
  }) {
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
    boxbuddy
    cherrytree
    darktable
    digikam
    displaycal
    distrobox
    drawing
    drawio
    eartag
    ente-auth
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
    unstable.megacmd
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
    yaziPlugins.glow
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
