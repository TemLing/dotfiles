#!/usr/bin/env bash

theme="adw-gtk3-dark"

current=$(gsettings get org.gnome.desktop.interface gtk-theme | tr -d "'")

if [[ "$current" == "$theme" ]]; then
    gsettings set org.gnome.desktop.interface gtk-theme adw-gtk3
    sleep 0.05
fi

gsettings set org.gnome.desktop.interface gtk-theme "$theme"
