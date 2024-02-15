{ config, pkgs, ... }:

{
  nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
    "steam"
    "steam-original"
    "steam-run"
  ];

  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
  };

  environment.systemPackages = with pkgs; [
    dosbox
    gcompris
    lutris
    mesa-demos
    playonlinux
    prismlauncher
    steam
    winetricks
    wineWowPackages.stable
  ];
}
