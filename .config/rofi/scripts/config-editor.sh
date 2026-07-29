#!/usr/bin/env bash

term="alacritty"
option=$(
	printf "%s\n"\
	"sway"\
	"waybar"\
	"kitty" | 
	rofi -dmenu -p "Edit Config"
)


case "$option" in
	"sway") "$term" --hold -e vim "$HOME/.config/sway/config" ;;

	"waybar") "$term" --hold -e vim "$HOME/.config/waybar/config.jsonc" ;;

	"kitty") "$term" --hold -e vim "$HOME/.config/kitty/kitty.conf" ;;
esac
