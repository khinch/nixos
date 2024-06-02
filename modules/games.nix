{ config, pkgs, ... }:

{
  # nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
  #   "steam"
  #   "steam-original"
  #   "steam-run"
  # ];

  nixpkgs.config.allowUnfree = true;

  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
  };

  environment.systemPackages = with pkgs; [
    dosbox
    gcompris
    gnuchess
    lutris
    mesa-demos
    playonlinux
    prismlauncher
    qsynth
    steam
    vulkan-tools
    winetricks
    wineWowPackages.stable
    xboard
  ];
}
