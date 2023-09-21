#!/bin/sh

packages=(
    "com.discordapp.Discord"
    "org.signal.Signal"
    "org.telegram.desktop"
)

for package in "${packages[@]}"
do
  flatpak --user install flathub $package -y
done