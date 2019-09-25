#!/usr/bin/env bash

sudo pkill radio.sh 
sudo pkill IMAGEMRADIO.sh 
sudo killall mplayer 
sudo pkill TIME.sh
sudo killall pngview
omxplayer -b --layer 999999 RetroPie/roms/shutdown/L2/launching.mp4 > /dev/null 2>&1
