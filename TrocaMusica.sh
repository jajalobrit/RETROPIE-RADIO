#!/bin/sh

sudo echo "quit" > home/pi/radio.fifo &
sudo pkill -u pi pngview
sleep 2
sudo -u pi /usr/local/bin/RADIO/pngview -b 0 -l 999995 -y 15 -x 1580 /home/pi/RetroPie/roms/RADIO/$R.png;
sudo pkill -u pi pngview
sleep 2
