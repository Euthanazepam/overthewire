#!/usr/bin/env bash
#
# Description:
# This script finds the password for the next level from the task https://overthewire.org/wargames/krypton/krypton1.html
#
# Usage:
# ./get-password.sh
#

if [ ! -f krypton2 ]; then
  scp -P 2231 krypton1@krypton.labs.overthewire.org:/krypton/krypton1/krypton2 .
fi

PASSWORD=$(cat krypton2 | tr 'A-Za-z' 'N-ZA-Mn-za-m')

echo $PASSWORD
