#!/bin/bash

# https://overthewire.org/wargames/krypton/krypton1.html

if [ ! -f krypton2 ]; then
  scp -P 2231 krypton1@krypton.labs.overthewire.org:/krypton/krypton1/krypton2 .
fi

PASSWORD=$(cat krypton2 | tr 'A-Za-z' 'N-ZA-Mn-za-m')

echo $PASSWORD
