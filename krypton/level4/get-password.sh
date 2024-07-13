#!/bin/bash

# https://overthewire.org/wargames/krypton/krypton4.html

if [ ! -f krypton5 ]; then
  scp -P 2231 krypton4@krypton.labs.overthewire.org:/krypton/krypton4/krypton5 .
fi

# Useful resource — https://www.dcode.fr/vigenere-cipher

CIPHER=$(cat krypton5 | sed 's/ //g')
KEY='FREKEY'
PASSWORD=$(python vigenere.py $CIPHER $KEY)

echo $PASSWORD
