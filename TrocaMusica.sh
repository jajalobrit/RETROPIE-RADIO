#!/bin/sh


#######TOCA AS MUSICAS DA LISTA 
#sudo killall mplayer;
#while true; do for i in $(cat /home/pi/LISTA.txt); do mplayer -slave -quiet -input file=/home/pi/fifinho $i ; echo "$i" > /home/pi/tocando-agora.txt; done done

########PASSA PRA PROXIMA DA LISTA
#R=$(tail -n 1 /home/pi/tocando-agora.txt | tr '1' 'B' | tr '2' 'C' | tr '3' 'D' | tr '4' 'E' | tr '5' 'F' | tr '6' 'G' | tr '7' 'H' | tr '8' 'I')
#echo "$R"
#R=$(tail -n 1 /home/pi/tocando-agora.txt | tr '1' 'B' | tr '2' 'C' | tr '3' 'D' | tr '4' 'E' | tr '5' 'F' | tr '6' 'G' | tr '7' 'H' | tr '8' 'I')
#sudo echo "quit" > /home/pi/fifinho;
#sudo pkill pngview
#/usr/local/bin/pngview -b 0 -l 999997 -y 0 -x 1500 /home/pi/$R.png;

#pkill -u pi pngview
#sudo pkill -u pi pngview >/dev/null;

#while :; do
#sudo pkill -u pi pngview &&
#/usr/local/bin/pngview -b 0 -l 999997 -y 0 -x 1500 /home/pi/$R.png;
#done


#######################ESSA#####################
#R=$(tail -n 1 /home/pi/tocando-agora.txt | tr '1' 'B' | tr '2' 'C' | tr '3' 'D' | tr '4' 'E' | tr '5' 'F' | tr '6' 'G' | tr '7' 'H' | tr '8' 'I')
sudo echo "quit" > /home/pi/fifinho &
sudo pkill -u pi pngview
sleep 2
sudo -u pi /usr/local/bin/radio/pngview -b 0 -l 999995 -y 15 -x 1580 /home/pi/$R.png;
sudo pkill -u pi pngview
sleep 2
done


#R=tail -n 1 /home/pi/tocando.txt
#case $R in
#1)  
	
#	sudo pkill -u pi pngview &&
#	sudo echo "quit" > /home/pi/fifinho &
#	echo "2" > /home/pi/tocando.txt &&
#	sleep 1
#	/usr/local/bin/pngview -b 0 -l 999997 -y 5 -x 1531 /home/pi/1.png > /dev/null &

#;;	
		
#2)  

#	sudo pkill -u pi pngview &&
#	sudo echo "quit" > /home/pi/fifinho &
#	echo "2" > /home/pi/tocando.txt &&
#	sleep 1
#	/usr/local/bin/pngview -b 0 -l 999997 -y 5 -x 1531 /home/pi/2.png > /dev/null &
		
#;;		
#3)
#	sudo pkill -u pi pngview &&
#	sudo echo "quit" > /home/pi/fifinho &
#	echo "2" > /home/pi/tocando.txt &&
#	sleep 1
#	/usr/local/bin/pngview -b 0 -l 999997 -y 5 -x 1531 /home/pi/2.png > /dev/null &
	
#;;	
#4)	

#	sudo pkill -u pi pngview &&
#	sudo echo "quit" > /home/pi/fifinho &
#	echo "2" > /home/pi/tocando.txt &&
#	sleep 1
#	/usr/local/bin/pngview -b 0 -l 999997 -y 5 -x 1531 /home/pi/2.png > /dev/null &
#;;	
#esac






#for a in $(cat /home/pi/tocando-agora.txt);
#d#o
#convert -size 500x100 xc:black -fill white -font Orbitron-Black -gravity east \
#			-pointsize 17 -draw "text 0,0 '$a'" \
#			-pointsize 1 -draw "text 0,32 'teste'" /dev/shm/radio.png
#/usr/local/bin/pngview -b 0 -l 999997 -y 1 -x 1531 /dev/shm/radio.png;
#done




 
