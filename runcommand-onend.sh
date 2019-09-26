#!/usr/bin/env bash

find /usr/local/bin/RADIO/ -iname radio.sh -exec sudo sed -i 's,#sleep,sleep,g' {} \; sudo /usr/local/bin/RADIO/radio.sh &
