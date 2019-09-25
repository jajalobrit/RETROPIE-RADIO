***#RÁDIO PARA O RETROPIE***   
(Adiciona web rádios no emulationstation no Retropie para Raspberry Pi)


**FUNCIONAMENTO:**
<br />O script usa o mplayer para carregar em loop uma lista de urls de streams de webrádios. 
<br />O jslisten é usado comos serviço monitorando os botões do controle, cada vez que o gatilho direito é pressionado é executado um script secundário que envia um comando "quit" ao radio.fifo ( que comanda o mplayer em modo slave) o que faz com que o loop seja interrompido e rapidamente retomado passando para  a proxíma linha da lista de rádios.
<br />Uma imagem png é carregada para cada url no momento em que ela é iniciada pelo mplayer.
<br />Ao abrir um emulador ou o kodi o funcionamento para e só retoma ao fechar.

**TO DO**
<br />Adicionar um teste de conexão com uma imagem de "sem conexão" em caso de estar offline 
<br />Capturar o título da música tocada atualmente ( não achei um meio de tirar só essa informação do output gigantesco do mplayer e também não sei se compensa já que algumas rádios fornecem essa informação e outras não.
<br />Seria ótimo capturar uma miniatura da logo da rádio na internet e exibir ( atualmente está funcionando com imagens png feitas manualmente>

---------------------------------------------------------------------------------------------------------------------------------
**IMPORTANTE:**

<br />Para adicionar outras rádios veja o leia-me em /home/pi/RetroPie/roms/RADIO 
<br />Por algum motivo que ainda não descobri só funciona bem com "playlists" de até 10 urls. 
 
----------------------------------------------------------------------------------------------------------------------------------


**INSTALAÇÃO:** 
Com a raspberry conectada à internet abra o terminal e execute o seguinte comando:
    
**wget -O - "https://raw.githubusercontent.com/jajalobrit/RETROPIE-RADIO/master/INSTALL.sh" | sudo bash**
    
A instalação será realizada automaticamente e a Raspberry será reiniciada.   

----------------------------------------------------------------------------------------------------------------------------------
