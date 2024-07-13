#!/bin/bash

# https://overthewire.org/wargames/krypton/krypton2.html

if [ ! -f krypton3 ]; then
  scp -P 2231 krypton2@krypton.labs.overthewire.org:/krypton/krypton2/krypton3 .
fi

PASSWORD=$(cat krypton3 | tr 'M-ZA-L' 'A-Z')

echo $PASSWORD
