#!/bin/sh

nix profile install nixpkgs#mplayer
wget https://raw.githubusercontent.com/camilo135/bttv/main/bttv.mp4
export CACA_DRIVER=ncurses
while true; do mplayer -really-quiet -vo caca bttv.mp4; done


