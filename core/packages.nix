{ config, pkgs, ... }:

let
  unstable = import (builtins.fetchTarball "https://github.com/NixOS/nixpkgs/archive/nixos-unstable.tar.gz") {
    config = config.nixpkgs.config;
  };
in

{
  nixpkgs.config = {
    allowUnfree = true;
    permittedInsecurePackages = [
      "electron-25.9.0" # For obsidian
    ];
  };

  
  environment.systemPackages = with pkgs; [
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
    kdePackages.k3b
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
    notepadqq
    obsidian
    pdfmixtool
    photocollage
    qrencode
    realesrgan-ncnn-vulkan
    rust-analyzer
    rustup
    scribus
    semantik
    shortwave
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

    # Firewire test
    libraw1394
    libavc1394
    libdc1394
    libiec61883
    hw-probe
    dvgrab
  ];
}
