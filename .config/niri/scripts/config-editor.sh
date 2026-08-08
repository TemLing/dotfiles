#!/usr/bin/env bash

term="kitty"
option=$(
	printf "%s\n"\
	"niri"\
	"kitty"\
	"matugen"\
	"mpd"\
	"rmpc"| 
	rofi -dmenu -p "Edit" 
)


case "$option" in
	"niri") "$term" --hold -e nvim "$HOME/.config/niri/config.kdl" ;;

	"kitty") "$term" --hold -e nvim "$HOME/.config/kitty/kitty.conf" ;;

	"matugen") "$term" --hold -e nvim "$HOME/.config/matugen/config.toml" ;;

	"mpd") "$term" --hold -e nvim "$HOME/.config/mpd/mpd.conf" ;;

	"rmpc") "$term" --hold -e nvim "$HOME/.config/rmpc/config.ron" ;;
esac
