{ pkgs,...}: let
  gruvboxPlus = import ./../pkgs/custom/gruvbox-plus.nix { inherit pkgs; };
in {
    imports = [ ./hyprland/default.nix ];
    wayland.windowManager.hyprland.enable = true;

    gtk = {
        enable = true;
        theme = {
            name = "Materia-dark";
            package = pkgs.materia-theme;
        };
        cursorTheme = {
            name = "Bibata-Modern-Ice";
            package = pkgs.bibata-cursors;
        };
        iconTheme = {
            name = "GruvboxPlus";
            package = gruvboxPlus;
        };
    };

    qt = {
        enable = true;
        platformTheme.name = "gtk";
        style.name = "adwaita-dark";
        style.package = pkgs.adwaita-qt;
    };

    xdg.mimeApps.defaultApplications = {
        "text/plain" = [ "neovide.desktop" ];
        "application/pdf" = [ "zathura.desktop" ];
        "image/*" = [ "sxiv.desktop" ];
        "video/png" = [ "mpv.desktop" ];
        "video/jpg" = [ "mpv.desktop" ];
        "video/*" = [ "mpv.desktop" ];
    };
}