#!/bin/sh

#################################################### TROCA PARA A PRÓXIMA A RÁDIO #################################################
#Autor: Jairo Lopes


if ! pgrep 'retroarch|kodi|PPSSPPSDL|reicast|drastic|daphne.sh|daphne.bin'; then

T=$(cat /home/pi/tocando)
case $T  in
01)
sudo pkill radio.sh
sudo pkill radio2.sh
sudo pkill HA.sh
sudo pkill -u pi pngview
sudo pkill mplayer
find /usr/local/bin/RADIO/ -iname RADIO.py -exec sudo sed -i 's,http://strm112.1.fm/back280s_mobile_mp3,http://139.162.14.151:9090/stream/1/,g' {} \; 
sudo /usr/local/bin/RADIO/radio2.sh &
echo "02" > /home/pi/tocando
;;
02)
sudo pkill radio.sh
sudo pkill radio2.sh
sudo pkill HA.sh
sudo pkill -u pi pngview
sudo pkill mplayer 
find /usr/local/bin/RADIO/ -iname RADIO.py -exec sudo sed -i 's,http://139.162.14.151:9090/stream/1/,http://jfm1.hostingradio.ru:14536/rock80.mp3,g' {} \; 
sudo /usr/local/bin/RADIO/radio2.sh &
echo "03" > /home/pi/tocando
;;
03)
sudo pkill radio.sh
sudo pkill radio2.sh
sudo pkill HA.sh
sudo pkill -u pi pngview
sudo pkill mplayer
find /usr/local/bin/RADIO/ -iname RADIO.py -exec sudo sed -i 's,http://jfm1.hostingradio.ru:14536/rock80.mp3,http://104.247.221.130:9020/stream1,g' {} \; 
sudo /usr/local/bin/RADIO/radio2.sh &
echo "04" > /home/pi/tocando
;;
04)
sudo pkill radio.sh
sudo pkill radio2.sh
sudo pkill HA.sh
sudo pkill -u pi pngview
sudo pkill mplayer
find /usr/local/bin/RADIO/ -iname RADIO.py -exec sudo sed -i 's,http://104.247.221.130:9020/stream1,http://strm112.1.fm/partyzone90s_mobile_mp3,g' {} \; 
sudo /usr/local/bin/RADIO/radio2.sh &
echo "05" > /home/pi/tocando
;;
05)
sudo pkill radio.sh
sudo pkill radio2.sh
sudo pkill HA.sh
sudo pkill -u pi pngview
sudo pkill mplayer
find /usr/local/bin/RADIO/ -iname RADIO.py -exec sudo sed -i 's,http://strm112.1.fm/partyzone90s_mobile_mp3,http://listen.011fm.com:8010/stream06,g' {} \; 
sudo /usr/local/bin/RADIO/radio2.sh &
echo "06" > /home/pi/tocando
;;
06)
sudo pkill radio.sh
sudo pkill radio2.sh
sudo pkill HA.sh
sudo pkill -u pi pngview
sudo pkill mplayer
find /usr/local/bin/RADIO/ -iname RADIO.py -exec sudo sed -i 's,http://listen.011fm.com:8010/stream06,http://ip2.paineldj5.com.br:8680/stream,g' {} \; 
sudo /usr/local/bin/RADIO/radio2.sh &
echo "07" > /home/pi/tocando
;;
07)
sudo pkill radio.sh
sudo pkill radio2.sh
sudo pkill HA.sh
sudo pkill -u pi pngview
sudo pkill mplayer
find /usr/local/bin/RADIO/ -iname RADIO.py -exec sudo sed -i 's,http://ip2.paineldj5.com.br:8680/stream,http://paris.discovertrance.com:8008//,g' {} \; 
sudo /usr/local/bin/RADIO/radio2.sh &
echo "08" > /home/pi/tocando
;;
08)
sudo pkill radio.sh
sudo pkill radio2.sh
sudo pkill HA.sh
sudo pkill -u pi pngview
sudo pkill mplayer
find /usr/local/bin/RADIO/ -iname RADIO.py -exec sudo sed -i 's,http://paris.discovertrance.com:8008//,http://stream03.my105.ch/my105oldschool.mp3,g' {} \; 
sudo /usr/local/bin/RADIO/radio2.sh &
echo "09" > /home/pi/tocando
;;
09)
sudo pkill radio.sh
sudo pkill radio2.sh
sudo pkill HA.sh
sudo pkill -u pi pngview
sudo pkill mplayer
find /usr/local/bin/RADIO/ -iname RADIO.py -exec sudo sed -i 's,http://stream03.my105.ch/my105oldschool.mp3,http://stream.srg-ssr.ch/m/rsj/mp3_128,g' {} \; 
sudo /usr/local/bin/RADIO/radio2.sh &
echo "10" > /home/pi/tocando
;;
10)
sudo pkill radio.sh
sudo pkill radio2.sh
sudo pkill HA.sh
sudo pkill -u pi pngview
sudo pkill mplayer
find /usr/local/bin/RADIO/ -iname RADIO.py -exec sudo sed -i 's,http://stream.srg-ssr.ch/m/rsj/mp3_128,http://surfrockradio.com:9996/stream/1/,g' {} \; 
sudo /usr/local/bin/RADIO/radio2.sh &
echo "11" > /home/pi/tocando
;;
11)
sudo pkill radio.sh
sudo pkill radio2.sh
sudo pkill HA.sh
sudo pkill -u pi pngview
sudo pkill mplayer
find /usr/local/bin/RADIO/ -iname RADIO.py -exec sudo sed -i 's,http://surfrockradio.com:9996/stream/1/,http://tuner.m1.fm/hits.mp3,g' {} \; 
sudo /usr/local/bin/RADIO/radio2.sh &
echo "12" > /home/pi/tocando
;;
12)
sudo pkill radio.sh
sudo pkill radio2.sh
sudo pkill HA.sh
sudo pkill -u pi pngview
sudo pkill mplayer
find /usr/local/bin/RADIO/ -iname RADIO.py -exec sudo sed -i 's,http://tuner.m1.fm/hits.mp3,http://play.radionintendo.com/stream,g' {} \; 
sudo /usr/local/bin/RADIO/radio2.sh &
echo "13" > /home/pi/tocando
;;
13)
sudo pkill radio.sh
sudo pkill radio2.sh
sudo pkill HA.sh
sudo pkill -u pi pngview
sudo pkill mplayer
find /usr/local/bin/RADIO/ -iname RADIO.py -exec sudo sed -i 's,http://play.radionintendo.com/stream,http://content.radiosega.net:8006/live,g' {} \; 
sudo /usr/local/bin/RADIO/radio2.sh &
echo "14" > /home/pi/tocando
;;
14)
sudo pkill radio.sh
sudo pkill radio2.sh
sudo pkill HA.sh
sudo pkill -u pi pngview
sudo pkill mplayer
find /usr/local/bin/RADIO/ -iname RADIO.py -exec sudo sed -i 's,http://content.radiosega.net:8006/live,http://stream.rpgamers.net:8000/rpgn,g' {} \; 
sudo /usr/local/bin/RADIO/radio2.sh &
echo "15" > /home/pi/tocando
;;
15)
sudo pkill radio.sh
sudo pkill radio2.sh
sudo pkill HA.sh
sudo pkill -u pi pngview
sudo pkill mplayer
find /usr/local/bin/RADIO/ -iname RADIO.py -exec sudo sed -i 's,http://stream.rpgamers.net:8000/rpgn,http://209.222.19.109:6980/stream/1/,g' {} \; 
sudo /usr/local/bin/RADIO/radio2.sh &
echo "16" > /home/pi/tocando
;;
16)
sudo pkill radio.sh
sudo pkill radio2.sh
sudo pkill HA.sh
sudo pkill -u pi pngview
sudo pkill mplayer
find /usr/local/bin/RADIO/ -iname RADIO.py -exec sudo sed -i 's,http://209.222.19.109:6980/stream/1/,http://strm112.1.fm/back280s_mobile_mp3,g' {} \; 
sudo /usr/local/bin/RADIO/radio2.sh &
echo "01" > /home/pi/tocando
esac
fi
