#!/usr/bin/env bash

song=$(
    mpc listall | rofi -dmenu \
    -i \
    -matching fuzzy \
    -sort \
    -p "Play Next"
)

[[ -n "$song" ]] && mpc insert "$song"
