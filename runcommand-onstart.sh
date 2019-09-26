#!/usr/bin/env bash

sudo pkill radio.sh 
sudo killall mplayer 
sudo killall pngview
find /usr/local/bin/RADIO/ -iname radio.sh -exec sudo sed -i 's,sleep,#sleep,g' {} \;
