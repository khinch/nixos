#!/bin/sh

packages=(
    "com.discordapp.Discord"
    "com.github.flxzt.rnote"
    "com.github.tchx84.Flatseal"
    "com.ozmartians.VidCutter"
    "com.ticktick.TickTick"
    "flathub org.pencil2d.Pencil2D"
    "net.cozic.joplin_desktop"
    "org.nickvision.tubeconverter"
    "org.signal.Signal"
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

