#!/bin/bash


for RADIO in $(tail -n 16 /usr/local/bin/RADIO/RADIO.py | head -n 6 | cut -c 7- | head -n 1 | tr -d \')
do
case $RADIO in

http://strm112.1.fm/back280s_mobile_mp3)
	sudo rm -f /dev/shm/MUSICA/*
	sudo pkill -u pi pngview
	tail -n 1 /dev/shm/musica | tr '/' '|' | sed "s/'/’/g" | sed "s/STREAMURL//g" | tr -d \; | tr -d \= | tr -d \. | while IFS=$'\n' read line; do
	sudo convert -size 350x60 xc:none -fill white -gravity west \
	-pointsize 12 -draw "text 0,-21 'ouvindo:  1.FM BACK TO THE 80s'" \
	-fill LawnGreen -pointsize 14 -font FjallaOne -draw "text 0,1 '$line'" /dev/shm/MUSICA/"$line".png &&
	sudo convert +append -gravity east /usr/local/bin/RADIO/IMG/R1.png /dev/shm/MUSICA/"$line".png /dev/shm/MUSICA/"$line".png &&
	sudo -u pi /usr/local/bin/RADIO/pngview -b 0 -l 999997 -y 9 -x 1440 /dev/shm/MUSICA/"$line".png
	echo "01" > /home/pi/tocando
	done
;;
http://139.162.14.151:9090/stream/1/)
	sudo rm -f /dev/shm/MUSICA/*
	sudo pkill -u pi pngview
	tail -n 1 /dev/shm/musica | tr '/' '|' | sed "s/'/’/g" | sed "s/STREAMURL//g" | tr -d \; | tr -d \= | tr -d \. | while IFS=$'\n' read line; do
	sudo convert -size 350x60 xc:none -fill white -gravity west \
	-pointsize 12 -draw "text 0,-21 'ouvindo:  RADIO SYNTHWAVE RETROWAVE'" \
	-fill LawnGreen -pointsize 14 -font FjallaOne -draw "text 0,1 '$line'" /dev/shm/MUSICA/"$line".png &&
	sudo convert +append -gravity east /usr/local/bin/RADIO/IMG/R2.png /dev/shm/MUSICA/"$line".png /dev/shm/MUSICA/"$line".png &&
	sudo -u pi /usr/local/bin/RADIO/pngview -b 0 -l 999997 -y 9 -x 1440 /dev/shm/MUSICA/"$line".png
	echo "02" > /home/pi/tocando
	done

;;
http://jfm1.hostingradio.ru:14536/rock80.mp3)
	sudo rm -f /dev/shm/MUSICA/*
	sudo pkill -u pi pngview
	tail -n 1 /dev/shm/musica | tr '/' '|' | sed "s/'/’/g" | sed "s/STREAMURL//g" | tr -d \; | tr -d \= | tr -d \. | while IFS=$'\n' read line; do
	sudo convert -size 350x60 xc:none -fill white -gravity west \
	-pointsize 12 -draw "text 0,-21 'ouvindo:  RADIO ROCK FM 80s'" \
	-fill LawnGreen -pointsize 14 -font FjallaOne -draw "text 0,1 '$line'" /dev/shm/MUSICA/"$line".png &&
	sudo convert +append -gravity east /usr/local/bin/RADIO/IMG/R3.png /dev/shm/MUSICA/"$line".png /dev/shm/MUSICA/"$line".png &&
	sudo -u pi /usr/local/bin/RADIO/pngview -b 0 -l 999997 -y 9 -x 1440 /dev/shm/MUSICA/"$line".png
	echo "03" > /home/pi/tocando
	done

;;
http://104.247.221.130:9020/stream1)
	sudo rm -f /dev/shm/MUSICA/*
	sudo pkill -u pi pngview
	tail -n 1 /dev/shm/musica | tr '/' '|' | sed "s/'/’/g" | sed "s/STREAMURL//g" | tr -d \; | tr -d \= | tr -d \. | while IFS=$'\n' read line; do
	sudo convert -size 350x60 xc:none -fill white -gravity west \
	-pointsize 12 -draw "text 0,-21 'ouvindo:  RADIO 80 FM'" \
	-fill LawnGreen -pointsize 14 -font FjallaOne -draw "text 0,1 '$line'" /dev/shm/MUSICA/"$line".png &&
	sudo convert +append -gravity east /usr/local/bin/RADIO/IMG/R4.png /dev/shm/MUSICA/"$line".png /dev/shm/MUSICA/"$line".png &&
	sudo -u pi /usr/local/bin/RADIO/pngview -b 0 -l 999997 -y 9 -x 1440 /dev/shm/MUSICA/"$line".png
	echo "04" > /home/pi/tocando
	done

;;
http://strm112.1.fm/partyzone90s_mobile_mp3)
	sudo rm -f /dev/shm/MUSICA/*
	sudo pkill -u pi pngview
	tail -n 1 /dev/shm/musica | tr '/' '|' | sed "s/'/’/g" | sed "s/STREAMURL//g" | tr -d \; | tr -d \= | tr -d \. | while IFS=$'\n' read line; do
	sudo convert -size 350x60 xc:none -fill white -gravity west \
	-pointsize 12 -draw "text 0,-21 'ouvindo:  1.FM ABSOLUTE 90s PARTY ZONE'" \
	-fill LawnGreen -pointsize 14 -font FjallaOne -draw "text 0,1 '$line'" /dev/shm/MUSICA/"$line".png &&
	sudo convert +append -gravity east /usr/local/bin/RADIO/IMG/R5.png /dev/shm/MUSICA/"$line".png /dev/shm/MUSICA/"$line".png &&
	sudo -u pi /usr/local/bin/RADIO/pngview -b 0 -l 999997 -y 9 -x 1440 /dev/shm/MUSICA/"$line".png
	echo "05" > /home/pi/tocando
	done

;;
http://listen.011fm.com:8010/stream06)
sudo rm -f /dev/shm/MUSICA/*
	sudo pkill -u pi pngview
	tail -n 1 /dev/shm/musica | tr '/' '|' | sed "s/'/’/g" | sed "s/STREAMURL//g" | tr -d \; | tr -d \= | tr -d \. | while IFS=$'\n' read line; do
	sudo convert -size 350x60 xc:none -fill white -gravity west \
	-pointsize 12 -draw "text 0,-21 'ouvindo:  011.FM TOTALLY 90s'" \
	-fill LawnGreen -pointsize 14 -font FjallaOne -draw "text 0,1 '$line'" /dev/shm/MUSICA/"$line".png &&
	sudo convert +append -gravity east /usr/local/bin/RADIO/IMG/R6.png /dev/shm/MUSICA/"$line".png /dev/shm/MUSICA/"$line".png &&
	sudo -u pi /usr/local/bin/RADIO/pngview -b 0 -l 999997 -y 9 -x 1440 /dev/shm/MUSICA/"$line".png
	echo "06" > /home/pi/tocando
	done
;;
http://ip2.paineldj5.com.br:8680/stream)
sudo rm -f /dev/shm/MUSICA/*
	sudo pkill -u pi pngview
	tail -n 1 /dev/shm/musica | tr '/' '|' | sed "s/'/’/g" | sed "s/STREAMURL//g" | tr -d \; | tr -d \= | tr -d \. | while IFS=$'\n' read line; do
	sudo convert -size 350x60 xc:none -fill white -gravity west \
	-pointsize 12 -draw "text 0,-21 'ouvindo:  RADIO HEAVY METAL EARS'" \
	-fill LawnGreen -pointsize 14 -font FjallaOne -draw "text 0,1 '$line'" /dev/shm/MUSICA/"$line".png &&
	sudo convert +append -gravity east /usr/local/bin/RADIO/IMG/R7.png /dev/shm/MUSICA/"$line".png /dev/shm/MUSICA/"$line".png &&
	sudo -u pi /usr/local/bin/RADIO/pngview -b 0 -l 999997 -y 9 -x 1440 /dev/shm/MUSICA/"$line".png
	echo "07" > /home/pi/tocando
	done
;;
http://paris.discovertrance.com:8008//)
sudo rm -f /dev/shm/MUSICA/*
	sudo pkill -u pi pngview
	tail -n 1 /dev/shm/musica | tr '/' '|' | sed "s/'/’/g" | sed "s/STREAMURL//g" | tr -d \; | tr -d \= | tr -d \. | while IFS=$'\n' read line; do
	sudo convert -size 350x60 xc:none -fill white -gravity west \
	-pointsize 12 -font FjallaOne -draw "text 0,-21 'ouvindo:  RADIO DISCOVER TRANCE'" \
	-fill LawnGreen -pointsize 14 -font FjallaOne -draw "text 0,1 '$line'" /dev/shm/MUSICA/"$line".png &&
	sudo convert +append -gravity east /usr/local/bin/RADIO/IMG/R8.png /dev/shm/MUSICA/"$line".png /dev/shm/MUSICA/"$line".png &&
	sudo -u pi /usr/local/bin/RADIO/pngview -b 0 -l 999997 -y 9 -x 1440 /dev/shm/MUSICA/"$line".png
	echo "08" > /home/pi/tocando
	done
;;
http://stream03.my105.ch/my105oldschool.mp3)
sudo rm -f /dev/shm/MUSICA/*
	sudo pkill -u pi pngview
	tail -n 1 /dev/shm/musica | tr '/' '|' | sed "s/'/’/g" | sed "s/STREAMURL//g" | tr -d \; | tr -d \= | tr -d \. | while IFS=$'\n' read line; do
	sudo convert -size 350x60 xc:none -fill white -gravity west \
	-pointsize 12 -font FjallaOne -draw "text 0,-21 'ouvindo:  MY 105 RAP & HIP HOP'" \
	-fill LawnGreen -pointsize 14 -font FjallaOne -draw "text 0,1 '$line'" /dev/shm/MUSICA/"$line".png &&
	sudo convert +append -gravity east /usr/local/bin/RADIO/IMG/R9.png /dev/shm/MUSICA/"$line".png /dev/shm/MUSICA/"$line".png &&
	sudo -u pi /usr/local/bin/RADIO/pngview -b 0 -l 999997 -y 9 -x 1440 /dev/shm/MUSICA/"$line".png
	echo "09" > /home/pi/tocando
	done
;;
http://stream.srg-ssr.ch/m/rsj/mp3_128)
sudo rm -f /dev/shm/MUSICA/*
	sudo pkill -u pi pngview
	tail -n 1 /dev/shm/musica | tr '/' '|' | sed "s/'/’/g" | sed "s/STREAMURL//g" | tr -d \; | tr -d \= | tr -d \. | while IFS=$'\n' read line; do
	sudo convert -size 350x60 xc:none -fill white -gravity west \
	-pointsize 12 -draw "text 0,-21 'ouvindo:  RADIO SWISS JAZZ'" \
	-fill LawnGreen -pointsize 14 -font FjallaOne -draw "text 0,1 '$line'" /dev/shm/MUSICA/"$line".png &&
	sudo convert +append -gravity east /usr/local/bin/RADIO/IMG/R10.png /dev/shm/MUSICA/"$line".png /dev/shm/MUSICA/"$line".png &&
	sudo -u pi /usr/local/bin/RADIO/pngview -b 0 -l 999997 -y 9 -x 1440 /dev/shm/MUSICA/"$line".png
	echo "10" > /home/pi/tocando
	done
;;
http://surfrockradio.com:9996/stream/1/)
sudo rm -f /dev/shm/MUSICA/*
	sudo pkill -u pi pngview
	tail -n 1 /dev/shm/musica | tr '/' '|' | sed "s/'/’/g" | sed "s/STREAMURL//g" | tr -d \; | tr -d \= | tr -d \. | while IFS=$'\n' read line; do
	sudo convert -size 350x60 xc:none -fill white -gravity west \
	-pointsize 12 -draw "text 0,-21 'ouvindo:  SURF ROCK RADIO'" \
	-fill LawnGreen -pointsize 14 -font FjallaOne -draw "text 0,1 '$line'" /dev/shm/MUSICA/"$line".png &&
	sudo convert +append -gravity east /usr/local/bin/RADIO/IMG/R11.png /dev/shm/MUSICA/"$line".png /dev/shm/MUSICA/"$line".png &&
	sudo -u pi /usr/local/bin/RADIO/pngview -b 0 -l 999997 -y 9 -x 1440 /dev/shm/MUSICA/"$line".png
	echo "11" > /home/pi/tocando
	done
;;
http://tuner.m1.fm/hits.mp3)
sudo rm -f /dev/shm/MUSICA/*
	sudo pkill -u pi pngview
	tail -n 1 /dev/shm/musica | tr '/' '|' | sed "s/'/’/g" | sed "s/STREAMURL//g" | tr -d \; | tr -d \= | tr -d \. | while IFS=$'\n' read line; do
	sudo convert -size 350x60 xc:none -fill white -gravity west \
	-pointsize 12 -draw "text 0,-21 'ouvindo:  THE HITS'" \
	-fill LawnGreen -pointsize 14 -font FjallaOne -draw "text 0,1 '$line'" /dev/shm/MUSICA/"$line".png &&
	sudo convert +append -gravity east /usr/local/bin/RADIO/IMG/R12.png /dev/shm/MUSICA/"$line".png /dev/shm/MUSICA/"$line".png &&
	sudo -u pi /usr/local/bin/RADIO/pngview -b 0 -l 999997 -y 9 -x 1440 /dev/shm/MUSICA/"$line".png
	echo "12" > /home/pi/tocando
	done
;;
http://play.radionintendo.com/stream)
sudo rm -f /dev/shm/MUSICA/*
	sudo pkill -u pi pngview
	tail -n 1 /dev/shm/musica | tr '/' '|' | sed "s/'/’/g" | sed "s/STREAMURL//g" | tr -d \; | tr -d \= | tr -d \. | while IFS=$'\n' read line; do
	sudo convert -size 350x60 xc:none -fill white -gravity west \
	-pointsize 12 -draw "text 0,-21 'ouvindo:  RADIO NINTENDO'" \
	-fill LawnGreen -pointsize 14 -font FjallaOne -draw "text 0,1 '$line'" /dev/shm/MUSICA/"$line".png &&
	sudo convert +append -gravity east /usr/local/bin/RADIO/IMG/R13.png /dev/shm/MUSICA/"$line".png /dev/shm/MUSICA/"$line".png &&
	sudo -u pi /usr/local/bin/RADIO/pngview -b 0 -l 999997 -y 9 -x 1440 /dev/shm/MUSICA/"$line".png
	echo "13" > /home/pi/tocando
	done
;;
http://content.radiosega.net:8006/live)
sudo rm -f /dev/shm/MUSICA/*
	sudo pkill -u pi pngview
	tail -n 1 /dev/shm/musica | tr '/' '|' | sed "s/'/’/g" | sed "s/STREAMURL//g" | tr -d \; | tr -d \= | tr -d \. | while IFS=$'\n' read line; do
	sudo convert -size 350x60 xc:none -fill white -gravity west \
	-pointsize 12 -draw "text 0,-21 'ouvindo:  RADIO SEGA'" \
	-fill LawnGreen -pointsize 14 -font FjallaOne -draw "text 0,1 '$line'" /dev/shm/MUSICA/"$line".png &&
	sudo convert +append -gravity east /usr/local/bin/RADIO/IMG/R14.png /dev/shm/MUSICA/"$line".png /dev/shm/MUSICA/"$line".png &&
	sudo -u pi /usr/local/bin/RADIO/pngview -b 0 -l 999997 -y 9 -x 1440 /dev/shm/MUSICA/"$line".png
	echo "14" > /home/pi/tocando
	done
;;
http://stream.rpgamers.net:8000/rpgn)
sudo rm -f /dev/shm/MUSICA/*
	sudo pkill -u pi pngview
	tail -n 1 /dev/shm/musica | tr '/' '|' | sed "s/'/’/g" | sed "s/STREAMURL//g" | tr -d \; | tr -d \= | tr -d \. | while IFS=$'\n' read line; do
	sudo convert -size 350x60 xc:none -fill white -gravity west \
	-pointsize 12 -draw "text 0,-21 'ouvindo:  RPGAMERS GAME MUSIC RADIO'" \
	-fill LawnGreen -pointsize 14 -font FjallaOne -draw "text 0,1 '$line'" /dev/shm/MUSICA/"$line".png &&
	sudo convert +append -gravity east /usr/local/bin/RADIO/IMG/R15.png /dev/shm/MUSICA/"$line".png /dev/shm/MUSICA/"$line".png &&
	sudo -u pi /usr/local/bin/RADIO/pngview -b 0 -l 999997 -y 9 -x 1440 /dev/shm/MUSICA/"$line".png
	echo "15" > /home/pi/tocando
	done
;;
http://209.222.19.109:6980/stream/1/)
sudo rm -f /dev/shm/MUSICA/*
	sudo pkill -u pi pngview
	tail -n 1 /dev/shm/musica | tr '/' '|' | sed "s/'/’/g" | sed "s/STREAMURL//g" | tr -d \; | tr -d \= | tr -d \. | while IFS=$'\n' read line; do
	sudo convert -size 350x60 xc:none -fill white -gravity west \
	-pointsize 12 -draw "text 0,-21 'ouvindo:  CLASSIC HITS 109 - THE 70s'" \
	-fill LawnGreen -pointsize 14 -font FjallaOne -draw "text 0,1 '$line'" /dev/shm/MUSICA/"$line".png &&
	sudo convert +append -gravity east /usr/local/bin/RADIO/IMG/R16.png /dev/shm/MUSICA/"$line".png /dev/shm/MUSICA/"$line".png &&
	sudo -u pi /usr/local/bin/RADIO/pngview -b 0 -l 999997 -y 9 -x 1440 /dev/shm/MUSICA/"$line".png
	echo "16" > /home/pi/tocando
	done
esac
done
