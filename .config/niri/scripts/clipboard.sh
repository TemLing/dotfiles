#!/usr/bin/env bash

delete_item="󰆴 Delete Item"
delete_all="󰩺 Delete All"
separator="────────────────"

choice=$(
{
    printf "%s\n" "$delete_item"
    printf "%s\n" "$delete_all"
    printf "%s\n" "$separator"
    cliphist list
} | rofi -dmenu -i -p 󰆒
)

case "$choice" in
    "$delete_item")
        selected=$(cliphist list | rofi -dmenu -i -p "Delete Item")
        [ -n "$selected" ] && printf '%s' "$selected" | cliphist delete
        ;;
    "$delete_all")
        cliphist wipe
        notify-send "Clipboard" "History wiped"
        ;;
    "$separator"|"")
        exit 0
        ;;
    *)
        printf '%s' "$choice" | cliphist decode | wl-copy
        ;;
esac
