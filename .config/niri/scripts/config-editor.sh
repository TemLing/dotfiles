#!/usr/bin/env bash

term="alacritty"
option=$(
	printf "%s\n"\
	"niri"\
	"kitty"\
	"matugen"| 
	rofi -dmenu -p "Edit" 
)


case "$option" in
	"niri") "$term" --hold -e nvim "$HOME/.config/niri/config.kdl" ;;

	"kitty") "$term" --hold -e nvim "$HOME/.config/kitty/kitty.conf" ;;

	"matugen") "$term" --hold -e nvim "$HOME/.config/matugen/config.toml" ;;
esac
