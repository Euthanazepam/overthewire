#!/bin/bash

scp -P 2231 krypton1@krypton.labs.overthewire.org:/krypton/krypton1/krypton2 .

PASSWORD=$(cat krypton2 | tr 'A-Za-z' 'N-ZA-Mn-za-m')

echo $PASSWORD
