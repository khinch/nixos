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
    citrix_workspace
    darktable
    digikam
    displaycal
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
    joplin-desktop
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
    xournalpp
    ydotool
    zoom-us
  ];
}
