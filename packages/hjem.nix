# Hjem-exclusive import that brings in the packages to my user's environment
{pkgs, ...}: {
    users.users.michael.packages = with pkgs; [
        starship
        zsh
    ];
}