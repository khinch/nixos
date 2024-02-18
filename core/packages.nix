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
    joplin-desktop
    keepassxc
    krename
    krita
    libdvdcss
    libreoffice
    libsForQt5.k3b
    megasync
    metadata-cleaner
    mpv
    notepadqq
    obsidian
    plots
    qrencode
    realesrgan-ncnn-vulkan
    rustup
    scribus
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
