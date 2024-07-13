#!/bin/bash

# https://overthewire.org/wargames/krypton/krypton5.html

if [ ! -f krypton6 ]; then
  scp -P 2231 krypton5@krypton.labs.overthewire.org:/krypton/krypton5/krypton6 .
fi

# Useful resource — https://www.dcode.fr/vigenere-cipher

CIPHER=$(cat krypton6 | sed 's/ //g')
KEY='KEYLENGTH'
PASSWORD=$(python ../vigenere.py $CIPHER $KEY)

echo $PASSWORD
