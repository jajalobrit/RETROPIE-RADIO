#!/bin/bash

# Autor: Jairo Lopes

                                  ###############################################################
   ################################                     RADIOS NO RETROPIE                     ##################################
                                  ###############################################################

   

######################################################## INSTALA O MPLAYER ######################################################
printf "\n\n"
echo "INSTALANDO MPLAYER!"
yes | sudo apt-get install mplayer &&
sudo mkfifo /usr/local/bin/RADIO/radio.fifo
sudo chmod 777 /usr/local/bin/RADIO/radio.fifo
printf "\n\n"
echo -e "\033[1;32m MPLAYER OK! \033[0m"


############################################ DOWNLOAD DOS ARQUIVOS NECESSÁRIOS ##################################################
printf "\n\n"
echo "BAIXANDO ARQUIVOS"

sudo echo "B" > /home/pi/tocando-agora.txt;
sudo chmod 777 /home/pi/tocando-agora.txt;
sudo mkdir /usr/local/bin/RADIO
cd /usr/local/bin/RADIO/;
sudo wget -O radio.sh "https://raw.githubusercontent.com/jajalobrit/RETROPIE-RADIO/master/radio.sh" &&
sudo chmod +x /usr/local/bin/RADIO/radio.sh;
cd /usr/local/bin/RADIO/;
sudo wget -O TrocaMusica.sh "https://raw.githubusercontent.com/jajalobrit/RETROPIE-RADIO/master/ProximaMusica.sh" &&
sudo chmod +x /usr/local/bin/RADIO/ProximaMusica.sh;
sudo wget -O TrocaMusica.sh "https://raw.githubusercontent.com/jajalobrit/RETROPIE-RADIO/master/PausaMusica.sh" &&
sudo chmod +x /usr/local/bin/RADIO/PausaMusica.sh;
cd /usr/local/bin/RADIO/;
sudo wget -O pngview "https://raw.githubusercontent.com/jajalobrit/RETROPIE-RADIO/master/pngview" &&
sudo chmod +x /usr/local/bin/RADIO/pngview;
cd /usr/local/bin/RADIO/;
sudo wget -O jslisten "https://raw.githubusercontent.com/jajalobrit/RETROPIE-RADIO/master/jslisten" &&
sudo chmod +x /usr/local/bin/RADIO/jslisten;
cd /etc/;
sudo wget -O jslisten.cfg "https://raw.githubusercontent.com/jajalobrit/RETROPIE-RADIO/master/jslisten.cfg" &&
cd /etc/systemd/system;
sudo wget -O jslisten.service "https://raw.githubusercontent.com/jajalobrit/RETROPIE-RADIO/master/jslisten.service" &&
mkdir /home/pi/RetroPie/roms/RADIO/;
sudo chmod 777 /home/pi/RetroPie/roms/RADIO;
cd /home/pi/RetroPie/roms/RADIO/;
wget -O RADIOS.txt "https://raw.githubusercontent.com/jajalobrit/RETROPIE-RADIO/master/RADIOS.txt" &&
sudo chmod 777 /home/pi/RetroPie/roms/RADIO/RADIOS.txt;
wget -O orbitron-black.otf "https://raw.githubusercontent.com/jajalobrit/RETROPIE-RADIO/master/orbitron-black.otf" &&
wget -O 01.png "https://raw.githubusercontent.com/jajalobrit/RETROPIE-RADIO/master/01.png" &&
wget -O 02.png "https://raw.githubusercontent.com/jajalobrit/RETROPIE-RADIO/master/02.png" &&
wget -O 03.png "https://raw.githubusercontent.com/jajalobrit/RETROPIE-RADIO/master/03.png" &&
wget -O 04.png "https://raw.githubusercontent.com/jajalobrit/RETROPIE-RADIO/master/04.png" &&
wget -O 05.png "https://raw.githubusercontent.com/jajalobrit/RETROPIE-RADIO/master/05.png" &&
wget -O 06.png "https://raw.githubusercontent.com/jajalobrit/RETROPIE-RADIO/master/06.png" &&
wget -O 07.png "https://raw.githubusercontent.com/jajalobrit/RETROPIE-RADIO/master/07.png" &&
wget -O 08.png "https://raw.githubusercontent.com/jajalobrit/RETROPIE-RADIO/master/08.png" &&
wget -O 09.png "https://raw.githubusercontent.com/jajalobrit/RETROPIE-RADIO/master/09.png" &&
wget -O 10.png "https://raw.githubusercontent.com/jajalobrit/RETROPIE-RADIO/master/10.png" &&
wget -O leia-me.txt "https://raw.githubusercontent.com/jajalobrit/RETROPIE-RADIO/master/leia-me.txt" &&
wget -O TEMPLATE.psd "https://raw.githubusercontent.com/jajalobrit/RETROPIE-RADIO/master/TEMPLATE.psd" &&

printf "\n\n"
echo -e "\033[1;32m ARQUIVOS OK! \033[0m"

################################################## CRIA O SERVICO JSLISTEN ##################################################
printf "\n\n"
echo "CRIANDO SERVIÇO JSLISTEN!"

sudo systemctl daemon-reload
sudo systemctl start jslisten.service
sudo systemctl enable jslisten
printf "\n\n"
echo -e "\033[1;32m JSLISTEN OK! \033[0m"

########################################### CONFIGURA RUNCOMMANDS ###############################################################
echo "CONFIGURANDO RUNCOMMAND-ONSTART"
if fgrep -q -e "sudo pkill radio.sh" /opt/retropie/configs/all/runcommand-onstart.sh
then
printf "\n\n"
echo -e "\033[1;32m RUNCOMMAND-ONSTART OK! \033[0m"

#elif
#fgrep -q -e "sudo pkill TIME.sh" /opt/retropie/configs/all/runcommand-onstart.sh
#then
#echo -e "sudo pkill radio.sh" >> /opt/retropie/configs/all/runcommand-onstart.sh
#printf "\n\n"
#echo -e "\033[1;32m RUNCOMMAND-ONSTART OK! \033[0m"

elif
[ -d "/opt/retropie/configs/all/runcommand-onstart.sh" ]; then
echo -e "sudo pkill radio.sh;
sudo pkill -u pi pngview" >> /opt/retropie/configs/all/runcommand-onstart.sh
printf "\n\n"
echo -e "\033[1;32m RUNCOMMAND-ONSTART OK! \033[0m"

else
cd /opt/retropie/configs/all/;
wget -O runcommand-onstart.sh "https://raw.githubusercontent.com/jajalobrit/RETROPIE-RADIO/master/runcommand-onstart.sh" &&
sudo chmod +x /opt/retropie/configs/all/runcommand-onstart.sh;
printf "\n\n"
echo -e "\033[1;32m RUNCOMMAND-ONSTART OK! \033[0m"
fi

echo "CONFIGURANDO RUNCOMMAND-ONEND"
if fgrep -q -e "/usr/local/bin/RADIO/radio.sh &" /opt/retropie/configs/all/runcommand-onend.sh
then
printf "\n\n"
echo -e "\033[1;32m RUNCOMMAND-ONEND OK! \033[0m"

#elif
#fgrep -q -e "TIME.sh" /opt/retropie/configs/all/runcommand-onend.sh
#then
#echo -e "/usr/local/bin/RADIO/radio.sh &" >> /opt/retropie/configs/all/runcommand-onend.sh
#printf "\n\n"
#echo -e "\033[1;32m RUNCOMMAND-ONEND OK! \033[0m"

elif
[ -d "/opt/retropie/configs/all/runcommand-onend.sh" ]; then
echo -e "/usr/local/bin/RADIO/radio.sh &" >> /opt/retropie/configs/all/runcommand-onend.sh
printf "\n\n"
echo -e "\033[1;32m RUNCOMMAND-ONNEND OK! \033[0m"

else
cd /opt/retropie/configs/all/;
wget -O runcommand-onend.sh "https://raw.githubusercontent.com/jajalobrit/RETROPIE-RADIO/master/runcommand-onend.sh" &&
sudo chmod +x /opt/retropie/configs/all/runcommand-onend.sh;
printf "\n\n"
echo -e "\033[1;32m RUNCOMMAND-ONNEND OK! \033[0m"
fi


####################################################### CONFIGURA KODI.SH ########################################################
printf "\n\n"
echo "CONFIGURANDO KODI.SH"

if
[ -d "/home/pi/RetroPie/roms/kodi" ]; then
cd /home/pi/RetroPie/roms/kodi/
wget -O kodi.sh "https://raw.githubusercontent.com/jajalobrit/RETROPIE-RADIO/master/kodi1.sh" &&
mv -f /home/pi/RetroPie/roms/kodi.sh /home/pi/RetroPie/roms/kodi.sh
sudo chmod +x kodi.sh
printf "\n\n"
echo -e "\033[1;32m KODI.SH OK! \033[0m"

elif
[ -d "/usr/local/bin/TIME.sh" ]; then
cd /home/pi/RetroPie/roms/kodi/
wget -O kodi.sh "https://raw.githubusercontent.com/jajalobrit/RETROPIE-RADIO/master/kodi2.sh" &&
mv -f /home/pi/RetroPie/roms/kodi.sh /home/pi/RetroPie/roms/kodi.sh
sudo chmod +x kodi.sh
printf "\n\n"
echo -e "\033[1;32m KODI.SH OK! \033[0m"
fi

if
[ -d "/home/pi/RetroPie/roms/ports/kodi.sh" ]; then
cd /home/pi/RetroPie/roms/ports/
wget -O kodi.sh "https://raw.githubusercontent.com/jajalobrit/RETROPIE-RADIO/master/kodi1.sh" &&
mv -f /home/pi/RetroPie/roms/kodi.sh /home/pi/RetroPie/roms/kodi.sh
sudo chmod +x kodi.sh
printf "\n\n"
echo -e "\033[1;32m KODI.SH OK! \033[0m"

elif
[ -d "/usr/local/bin/TIME.sh" ]; then
cd /home/pi/RetroPie/roms/ports/
wget -O kodi.sh "https://raw.githubusercontent.com/jajalobrit/RETROPIE-RADIO/master/kodi2.sh" &&
mv -f /home/pi/RetroPie/roms/kodi.sh /home/pi/RetroPie/roms/kodi.sh
sudo chmod +x kodi.sh
printf "\n\n"
echo -e "\033[1;32m KODI.SH OK! \033[0m"
fi


################################ COLOCA O SCRIPT PARA SER EXECUTADO AUTOMATICAMENTE #################################################
printf "\n\n"
echo "CONFIGURANDO AUTOSTART"

if fgrep -q -e "/usr/local/bin/RADIO/radio.sh" /opt/retropie/configs/all/autostart.sh
then
printf "\n\n"
echo -e "\033[1;32m AUTOSTART OK! \033[0m"

else
find /opt/retropie/configs/all/ -iname autostart.sh -exec sudo sed -i 's,emulationstation #auto,while pgrep omxplayer > /dev/null 2>\&1; do sleep 1; done\
(sleep 5; /usr/local/bin/RADIO/radio.sh > /dev/null 2>\&1) \&\
emulationstation #auto,g' {} \;
printf "\n\n"
echo -e "\033[1;32m AUTOSTART OK! \033[0m"
fi


############################# COLOCA A lAYER DAS SPLASHSCREENS ACIMA DO RADIO #################################################
printf "\n\n"
echo "CONFIGURANDO SPLASHSCREEN"

find /opt/retropie/supplementary/splashscreen/ -iname asplashscreen.sh -exec sudo sed -i 's,10000,999999,g' {} \;
printf "\n\n"
echo -e "\033[1;32m SPLASHSCREEN OK! \033[0m"


##### FINALIZANDO ######
printf "\n\n\n"
echo -e "\033[1;32m INSTALAÇÃO CONCLUÍDA \033[0m"
echo -e "\033[1;32m REINICIANDO EM 5 SEGUNDOS \033[0m"
sleep 5 
sudo reboot
