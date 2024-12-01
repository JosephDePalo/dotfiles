#!/bin/bash

# Apply wallpaper using wal
wal -i ~/.wallpaper

# Start picom
picom --config ~/.config/picom/picom.conf &

polybar &


