#!/bin/bash

# This script finds the password for the next level from the task https://overthewire.org/wargames/krypton/krypton4.html

if [ ! -f krypton5 ]; then
  scp -P 2231 krypton4@krypton.labs.overthewire.org:/krypton/krypton4/krypton5 .
fi

CIPHER=$(cat krypton5 | sed 's/ //g')

# How to get the key? Use https://www.dcode.fr/vigenere-cipher
KEY='FREKEY'
PASSWORD=$(python ../vigenere.py $CIPHER $KEY)

echo $PASSWORD
