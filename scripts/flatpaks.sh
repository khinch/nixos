#!/bin/sh

packages=(
    "com.discordapp.Discord"
    "com.github.flxzt.rnote"
    "com.github.liferooter.textpieces"
    "com.github.rajsolai.textsnatcher"
    "com.github.tchx84.Flatseal"
    "com.ozmartians.VidCutter"
    "com.ticktick.TickTick"
    "flathub org.pencil2d.Pencil2D"
    "net.cozic.joplin_desktop"
    "org.signal.Signal"
    "org.telegram.desktop"
)

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

for package in "${packages[@]}"
do
  flatpak install flathub $package -y
done