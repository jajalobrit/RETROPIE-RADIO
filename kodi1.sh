sudo pkill radio.sh
sudo killall pngview
find /usr/local/bin/RADIO/ -iname radio.sh -exec sudo sed -i 's,sleep,#sleep,g' {} \;
kodi >/dev/null
if [ "$?" = "0" ]; then
while pkill -0 kodi.bin 2>/dev/null; do sleep 1; done
radio.sh
find /usr/local/bin/RADIO/ -iname radio.sh -exec sudo sed -i 's,#sleep,sleep,g' {} \;
fbset -depth 8 && fbset -depth 16 >/dev/null 2>&1
fi
