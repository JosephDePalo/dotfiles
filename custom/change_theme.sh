#!/bin/bash

WALL_LOC=~/.wallpaper

if [ ! -f $1 ]; then
	echo "File does not exist."
	exit
fi

rm $WALL_LOC 2> /dev/null
ln -s $1 $WALL_LOC

wal -i $WALL_LOC
cp $WALL_LOC /usr/share/sddm/themes/sugar-dark/wallpaper 
betterlockscreen -u $WALL_LOC &
pkill dunst
notify-send -t 3000 "Theme updated."
