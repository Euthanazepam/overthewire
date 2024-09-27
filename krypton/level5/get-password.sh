#!/bin/bash

# This script finds the password for the next level from the task https://overthewire.org/wargames/krypton/krypton5.html

if [ ! -f krypton6 ]; then
  scp -P 2231 krypton5@krypton.labs.overthewire.org:/krypton/krypton5/krypton6 .
fi

CIPHER=$(cat krypton6 | sed 's/ //g')

# How to get the key? Use https://www.dcode.fr/vigenere-cipher
KEY='KEYLENGTH'
PASSWORD=$(python ../vigenere.py $CIPHER $KEY)

echo $PASSWORD
