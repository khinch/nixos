#!/bin/sh

packages=(
    "com.discordapp.Discord"
    "com.github.flxzt.rnote"
    "com.github.liferooter.textpieces"
    "com.github.rajsolai.textsnatcher"
    "com.github.tchx84.Flatseal"
    "com.ticktick.TickTick"
    "org.signal.Signal"
    "org.telegram.desktop"
)

for package in "${packages[@]}"
do
  flatpak install flathub $package -y
done