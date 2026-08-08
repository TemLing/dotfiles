#!/usr/bin/env bash
#
# wallpaper-picker.sh
# Pilih wallpaper lewat rofi, set pakai awww-daemon.
#
# Requirement: rofi, awww-daemon, awww (CLI)

set -euo pipefail

WALLPAPER_DIR="$HOME/Pictures/wallpapers"
ROFI_THEME="$HOME/.config/rofi/themes/wallpaper.rasi"

# --- Pastikan daemon jalan ---
ensure_daemon_running() {
    if ! pgrep -x awww-daemon >/dev/null; then
        awww-daemon &
        sleep 0.5
    fi
}

# --- Ambil daftar gambar, format buat rofi -show-icons ---
list_wallpapers() {
    find "$WALLPAPER_DIR" -maxdepth 1 -type f \
        \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" \
           -o -iname "*.webp" -o -iname "*.gif" \) |
    while IFS= read -r img; do
        printf "%s\x00icon\x1f%s\n" "$(basename "$img")" "$img"
    done
}

# --- Tampilkan rofi, tangkap pilihan ---
pick_wallpaper() {
    list_wallpapers | rofi \
        -dmenu \
        -show-icons \
        -p "Wallpaper" \
        -theme "$ROFI_THEME"
}

# --- Set wallpaper terpilih ---
apply_wallpaper() {
    local file="$1"

    matugen image "$file" \
        --source-color-index 0 
}

main() {
    ensure_daemon_running

    local chosen
    chosen=$(pick_wallpaper)
    [ -z "$chosen" ] && exit 0

    apply_wallpaper "$WALLPAPER_DIR/$chosen"
}

main "$@"
