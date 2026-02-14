#!/usr/bin/env sh

packages=(
    "com.discordapp.Discord"
    "com.github.flxzt.rnote"
    "com.github.tchx84.Flatseal"
    "com.ozmartians.VidCutter"
    "com.ticktick.TickTick"
    "com.wireframesketcher.WireframeSketcher"
    "net.cozic.joplin_desktop"
    "org.kde.kxstitch"
    "org.pencil2d.Pencil2D"
    "org.nickvision.tubeconverter"
    "org.shotcut.Shotcut"
    "org.signal.Signal"
    "org.stellarium.Stellarium"
    "org.telegram.desktop"
)

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

for package in "${packages[@]}"
do
  flatpak install flathub $package -y
done

# Fonts
flatpak --user override --filesystem=$HOME/.local/share/fonts:ro
flatpak --user override --filesystem=$HOME/.icons:ro
flatpak --user override --filesystem=/nix/store:ro

