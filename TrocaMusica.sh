#!/bin/sh

#################################################### TROCA PARA A PRÓXIMA A RÁDIO #################################################
#Autor: Jairo Lopes

sudo echo "quit" > /usr/local/bin/RADIO/radio.fifo &
sudo pkill -u pi pngview
