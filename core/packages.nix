{ config, pkgs, ... }:

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
    freecad
    freefilesync
    gimp
    gnome-decoder
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
    libsForQt5.k3b
    losslesscut-bin
    makemkv
    megasync
    metadata-cleaner
    minder
    mpv
    notepadqq
    obsidian
    pdfmixtool
    plots
    qrencode
    read-it-later
    realesrgan-ncnn-vulkan
    rustup
    scribus
    semantik
    shortwave
    shotcut
    shutter
    spotify
    thunderbird
    transmission-gtk
    treesheets
    veracrypt
    video-trimmer
    vlc
    vscode
    webcamoid
    xfce.thunar
    xpano
    xournalpp
    ydotool
    zoom-us

    # Firewire test
    libraw1394 
    libavc1394 
    libdc1394 
    libiec61883 
    hw-probe 
    dvgrab 
    coriander
  ];
}
