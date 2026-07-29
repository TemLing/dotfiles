#!/usr/bin/env bash

set -e

PACKAGES=(
sway
waybar
stow
kitty
nautilus
rofi-wayland
swaylock-effects
swayidle
swaync
wlogout
awww
brightnessctl
cliphist
grim
slurp
networkmanager
networkmanager-dmenu
playerctl
pipewire
wireplumber
wl-clipboard
xdg-desktop-portal
xdg-desktop-portal-wlr
ttf-jetbrains-mono-nerd
noto-fonts
noto-fonts-emoji
)

echo "Installing packages..."

if ! command -v pacman >/dev/null 2>&1; then
    echo "This script only supports Arch Linux and its derivatives."
    exit 1
fi

sudo pacman -S --needed "${PACKAGES[@]}"

echo "Optional Packages:
- fastfetch
- alacritty
"
echo
echo "Done!"
echo
echo "Next steps:"
echo "  stow */"
echo
echo "Log out and log back in (or reload Sway) to apply all changes."
