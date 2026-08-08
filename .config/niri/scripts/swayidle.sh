#!/usr/bin/env bash

swayidle -w \
    timeout 300 'brightnessctl -s set 10%' \
    resume 'brightnessctl -r' \
    timeout 600 'niri msg action power-off-monitors' \
    resume 'niri msg action power-on-monitors' \
    timeout 900 'swaylock -f' \
    before-sleep 'swaylock -f'
