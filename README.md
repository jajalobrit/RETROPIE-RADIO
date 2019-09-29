![MIUD](https://user-images.githubusercontent.com/52551379/65658298-7c801700-dffd-11e9-90a9-4f2dfca4dc93.png)



***RÁDIO PARA O RETROPIE***   
(Adiciona web rádios no emulationstation no Retropie para Raspberry Pi)


**FUNCIONAMENTO:**
<br />O script usa o mplayer para carregar em loop uma lista de urls de streams de webrádios. 
<br />O jslisten é usado como serviço monitorando os botões do controle, cada vez que o gatilho direito é pressionado é executado um script secundário que envia um comando "quit" ao mplayer, o que faz com que o loop seja interrompido e rapidamente retomado passando para  a próxima linha da lista de rádios.
<br />Uma imagem png é carregada para cada url no momento em que ela é iniciada pelo mplayer.
<br />Ao abrir um emulador ou o kodi o funcionamento pára e só é retomado ao fechar.

---------------------------------------------------------------------------------------------------------------------------------
**IMPORTANTE:**

<br />Para adicionar outras rádios veja o leia-me que fica salvo em /home/pi/RetroPie/roms/RADIO após a instalação.
<br />Por algum motivo, que ainda não descobri, só funciona bem com "playlists" de até 10 urls. 

<br />Por padrão o script tem um delay de 5 segundos para iniciar ( de modo a não tocar rádio enquanto a splashscreen estiver na tela).
<br />Caso queira alterar o delay abra o arquivo /opt/retropie/configs/all/autostart.sh e mude o valor do "sleep".

Caso queira alterar a lista de rádios siga a instrução no leia-me que fica em /home/pi/Retropie/roms/RADIO após a instalação.

<br />As rádios, como tudo que funciona online, podem ficar indisponíveis por tempo indeterminado, o que não é um problema do script

 
----------------------------------------------------------------------------------------------------------------------------------


**COMO INSTALAR:** 
Com a raspberry conectada à internet abra o terminal e execute o seguinte comando:
    
**wget -O - "https://raw.githubusercontent.com/jajalobrit/RETROPIE-RADIO/master/INSTALL.sh" | sudo bash**
    
A instalação será realizada automaticamente e a Raspberry será reiniciada.   

----------------------------------------------------------------------------------------------------------------------------------
