{ pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
  };

  environment.systemPackages = with pkgs; [
    dosbox
    gcompris
    gamescope
    gnuchess
    lutris
    mesa-demos
    prismlauncher
    qsynth
    vulkan-tools
    winetricks
    wineWowPackages.stable
    xboard
  ];
}
