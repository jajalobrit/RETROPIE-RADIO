#!/bin/sh

######################################################### RADIOS NO RETROPIE ##############################################################
#Autor: Jairo Lopes

while pgrep omxplayer; do
sleep 1
done
sudo /usr/local/bin/RADIO/HI.sh; sleep 0.1; python /usr/local/bin/RADIO/RADIO.py > /dev/shm/musica
