![RETROPIE RADIO](https://user-images.githubusercontent.com/52551379/65914968-ccb5fb00-e3a8-11e9-893e-64942fe02754.png)




***RÁDIO PARA O RETROPIE***   
(Adiciona web rádios no emulationstation no Retropie para Raspberry Pi)


**FUNCIONAMENTO:**
<br />O script usa o mplayer para carregar em loop uma lista de urls de streams de webrádios. 
<br />O jslisten é usado como serviço monitorando os botões do controle, cada vez que o gatilho direito é pressionado é executado um script secundário que envia um comando "quit" ao mplayer, o que faz com que o loop seja interrompido e rapidamente retomado passando para  a próxima linha da lista de rádios.
<br />Uma imagem png é carregada para cada url no momento em que ela é iniciada pelo mplayer.
<br />Ao abrir um emulador ou o kodi o funcionamento pára e só é retomado ao fechar.

---------------------------------------------------------------------------------------------------------------------------------
**IMPORTANTE:**


<br />Por padrão o script tem um delay de 15 segundos para iniciar ( de modo a não tocar rádio enquanto a splashscreen estiver na tela).
<br />Caso queira alterar o delay execute no terminal :  sudo nano usr/local/bin/RADIO/radio.sh   e altere o valor de sleep para o desejado (em segundos), em seguida salve a alteração.

Caso queira alterar a lista de rádios siga a instrução no leia-me que fica em /home/pi/Retropie/roms/RADIO após a instalação

 
----------------------------------------------------------------------------------------------------------------------------------


**COMO INSTALAR:** 
Com a raspberry conectada à internet abra o terminal e execute o seguinte comando:
    
**wget -O - "https://raw.githubusercontent.com/jajalobrit/RETROPIE-RADIO/master/INSTALL.sh" | sudo bash**
    
A instalação será realizada automaticamente e a Raspberry será reiniciada.   

----------------------------------------------------------------------------------------------------------------------------------
