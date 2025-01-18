{ pkgs, ... }:
{
  imports = [
    ./custom/geometry.nix
  ];

  home.packages = with pkgs; [
    git
    tig
    curl
    wget
    lla
    bat
    killall
    du-dust
    atop
    btop
    fd
    fzf
    zoxide
  ];
}
