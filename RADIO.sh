#!/bin/sh


##TEMPO EM SEGUNDOS PARA AGUARDAR ATÉ COMEÇAR A TOCAR , CASO TENHA UMA SPLASHSCREEN#
############
sleep 14
############



######################################################### RADIOS NO RETROPIE ##############################################################



echo "B" > /home/pi/tocando-agora.txt;
while true; do for i in $(cat /home/pi/LISTA.txt); do sudo mplayer -slave -input file=/home/pi/fifinho $i >/dev/null ; echo "$i" > /home/pi/tocando-agora.txt; done done &


while :; do
for R in $(tail -n 1 /home/pi/tocando-agora.txt); 
#| tr '1' 'B' | tr '2' 'C' | tr '3' 'D' | tr '4' 'E' | tr '5' 'F' | tr '6' 'G' | tr '7' 'H' | tr '8' 'I'| tr '9' 'J'| tr '10' 'K');
do
sudo pkill -u pi pngview
sleep 1
sudo -u pi /usr/local/bin/radio/pngview -b 0 -l 999995 -y 15 -x 1580 /home/pi/$R.png;
sudo pkill -u pi pngview
#sleep 1
done
done
done

