#!/bin/bash

# This script finds the password for the next level from the task https://overthewire.org/wargames/krypton/krypton6.html

if [ ! -f krypton7 ]; then
  scp -P 2231 krypton6@krypton.labs.overthewire.org:/krypton/krypton6/krypton7 .
fi

CIPHER=$(cat krypton7 | sed 's/ //g')

: '
How to get the key?

1. Connect to server.
ssh krypton6@krypton.labs.overthewire.org -p 2231

2. Create a temp directory.
mktemp -d
cd /tmp/<temp_dir>

3. Create a symbolic link to the keyfile.dat
ln -s /krypton/krypton6/keyfile.dat

4. Change directory permissions.
chmod 777 .

5. Generate a string containing only 'A'.
python3 -c "print('A' * 100)" > a.txt
xxd -b a.txt

6. Get the key, xor a.txt and the key.
/krypton/krypton6/encrypt6 a.txt key.txt

7. The first 30 characters of key.txt are the key.
head -c 30 key.txt
'

KEY='EICTDGYIYZKTHNSIRFXYCPFUEOCKRN'
PASSWORD=$(python ../vigenere.py $CIPHER $KEY)

echo $PASSWORD
