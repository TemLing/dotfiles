#!/usr/bin/env bash

theme="adw-gtk3-dark"

# Reload GTK3
current_theme=$(gsettings get org.gnome.desktop.interface gtk-theme | tr -d "'")
if [[ "$current_theme" == "$theme" ]]; then
    gsettings set org.gnome.desktop.interface gtk-theme adw-gtk3
    sleep 0.05
fi
gsettings set org.gnome.desktop.interface gtk-theme "$theme"

# Reload GTK4/libadwaita
current_scheme=$(gsettings get org.gnome.desktop.interface color-scheme | tr -d "'")
if [[ "$current_scheme" == "prefer-dark" ]]; then
    gsettings set org.gnome.desktop.interface color-scheme prefer-light
    sleep 0.05
fi
gsettings set org.gnome.desktop.interface color-scheme prefer-dark
