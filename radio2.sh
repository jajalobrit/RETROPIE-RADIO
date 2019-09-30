#!/bin/sh

#!/bin/sh

######################################################### RADIOS NO RETROPIE ##############################################################
#Autor: Jairo Lopes

echo "01" > /home/pi/tocando-agora.txt;
while true; do for i in $(cat /home/pi/RetroPie/roms/RADIO/RADIOS.txt); do sudo mplayer -slave -input file=/usr/local/bin/RADIO/radio.fifo $i >/dev/null ; echo "$i" > /home/pi/tocando-agora.txt; done done &
while :; do
for R in $(tail -n 1 /home/pi/tocando-agora.txt); 
do
sudo pkill -u pi pngview
sleep 1
sudo -u pi /usr/local/bin/RADIO/pngview -b 0 -l 999995 -y 20 -x 1560 /home/pi/RetroPie/roms/RADIO/$R.png;
sudo pkill -u pi pngview
sleep 1
done
done
