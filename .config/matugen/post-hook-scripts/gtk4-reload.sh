#!/usr/bin/env bash

gsettings set org.gnome.desktop.interface color-scheme prefer-light
sleep 0.1
gsettings set org.gnome.desktop.interface color-scheme prefer-dark
