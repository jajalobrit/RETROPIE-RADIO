#!/usr/bin/env bash

radio.sh &
find /usr/local/bin/RADIO/ -iname radio.sh -exec sudo sed -i 's,#sleep,sleep,g' {} \;

