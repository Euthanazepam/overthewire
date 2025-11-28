#!/usr/bin/env bash
#
# Description:
# This script finds the password for the next level from the task https://overthewire.org/wargames/krypton/krypton3.html
#
# Usage:
# ./get-password.sh
#

if [ ! -f krypton4 ]; then
  scp -P 2231 krypton3@krypton.labs.overthewire.org:/krypton/krypton3/krypton4 .
fi

# Useful resource — https://www.dcode.fr/monoalphabetic-substitution
PASSWORD=$(cat krypton4 | tr 'ABCDEFGHIJKLMNOPQRSTUVWXYZ' 'BOIHGKNQVTWYURXZAJEMSLDFPC')

echo $PASSWORD
