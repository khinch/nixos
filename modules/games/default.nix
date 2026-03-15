{ pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  programs = {
    steam = {
      enable = true;
      extraCompatPackages = with pkgs; [
        proton-ge-bin
      ];
    };

    gamescope = {
      enable = true;
      # Important for Steam: leave this off, see below
      capSysNice = false;
    };
  };
  
  environment.systemPackages = with pkgs; [
    dosbox
    gcompris
    gnuchess
    lutris
    mangohud
    mesa-demos
    prismlauncher
    protonup-qt
    qsynth
    vulkan-tools
    winetricks
    wineWowPackages.stable
    xboard
  ];
}
