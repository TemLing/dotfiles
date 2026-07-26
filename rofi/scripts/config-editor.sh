#!/usr/bin/env bash

term="alacritty"
option=$(
	printf "%s\n"\
	"sway"\
	"waybar"\
	"alacritty" | 
	rofi -dmenu -p "Edit Config"
)


case "$option" in
	"sway") "$term" --hold -e nvim "$HOME/.config/sway/config" ;;

	"waybar") "$term" --hold -e nvim "$HOME/.config/waybar/config.jsonc" ;;

	"alacritty") "$term" --hold -e nvim "$HOME/.config/alacritty/alacritty.toml" ;;
esac
