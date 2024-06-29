#!/bin/bash

scp -P 2231 krypton2@krypton.labs.overthewire.org:/krypton/krypton2/krypton3 .

PASSWORD=$(cat krypton3 | tr 'M-ZA-L' 'A-Z')

echo 'Password:' $PASSWORD
