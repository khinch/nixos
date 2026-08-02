{ pkgs, ... }:
let
  egpu = pkgs.writeShellScriptBin "egpu" (builtins.readFile ./egpu.sh);
  flatpaks = pkgs.writeShellScriptBin "flatpaks" (builtins.readFile ./flatpaks.sh);
  roblox = pkgs.writeShellScriptBin "roblox" (builtins.readFile ./roblox.sh);
in
{
  environment.systemPackages = [
    egpu
    flatpaks
    roblox
  ];
}
