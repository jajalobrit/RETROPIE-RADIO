#!/bin/bash

for js in /dev/input/js*; do path=$(udevadm info --name=$js | grep DEVPATH | cut -d= -f2); name=$(</$(dirname sys$path)/name); echo "$name".cfg; done
L2=$(cat /opt/retropie/configs/all/retroarch/autoconfig/"$name".cfg | grep '^input_l2_btn*' | sed "s/input_l2_btn = /button1=/g" | tr -d '"')
R2=$(cat /opt/retropie/configs/all/retroarch/autoconfig/"$name".cfg | grep '^input_r2_btn*' | sed "s/input_r2_btn = /button1=/g" | tr -d '"')
if [ -n "$R2" ]
then
     sudo sed -i "s/`head -3 /etc/jslisten.cfg | tail -1 `/$R2/" /etc/jslisten.cfg
	 sudo sed -i "s/`tail -1 /etc/jslisten.cfg `/$L2/" /etc/jslisten.cfg
	 sudo systemctl restart jslisten > /dev/null 2>&1 & 
fi



sudo mkdir -p /dev/shm/MUSICA &
sudo convert -size 350x60 xc:black -fill LawnGreen -font FjallaOne -gravity west -pointsize 15 -draw "text 0,1 'BEM VINDO JAIRO!!'" /dev/shm/MUSICA/HI.png
sudo convert /dev/shm/MUSICA/HI.png -fuzz 10% -transparent black /dev/shm/MUSICA/HI.png
sudo convert +append -gravity east /usr/local/bin/RADIO/IMG/HI.png /dev/shm/MUSICA/HI.png /dev/shm/MUSICA/HI.png
sudo -u pi /usr/local/bin/RADIO/pngview -b 0 -l 999997 -y 9 -x 1440 /dev/shm/MUSICA/HI.png &
sudo mplayer /home/pi/RetroPie/roms/BGM/"BEM VINDO JAIRO!".ogg	
sudo pkill -u pi pngview

## ramdom ---> find /usr/local/bin/RADIO/IMG/ -type f | shuf -n 1
