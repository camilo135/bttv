#!/bin/sh

nix-shell -p mplayer
export CACA_DRIVER=ncurses
cp bttv.mp4 ../
rm -r ../bttv
while true; do mplayer -really-quiet -vo caca ../bttv.mp4; done


