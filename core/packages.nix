{ config, pkgs, ... }:

let
  unstable = import <nixos-unstable> {
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
    unstable.euro-office-desktopeditors
    exiftool
    ferdium
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
    simple-scan
    spotify
    starship
    textpieces
    textsnatcher
    thunderbird
    transmission_4-gtk
    treesheets
    veracrypt
    vidcutter
    video-trimmer
    vlc
    unstable.vscode
    webcamoid
    thunar
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
