#!/usr/bin/env bash
#
# Description:
# This script finds the password for the next level from the task https://overthewire.org/wargames/krypton/krypton2.html
#
# Usage:
# ./get-password.sh
#

if [ ! -f krypton3 ]; then
  scp -P 2231 krypton2@krypton.labs.overthewire.org:/krypton/krypton2/krypton3 .
fi

PASSWORD=$(cat krypton3 | tr 'M-ZA-L' 'A-Z')

echo $PASSWORD
