#!/usr/bin/env bash
#
# Description:
# This script finds the password for the next level from the task https://overthewire.org/wargames/krypton/krypton0.html
#
# Usage:
# ./get-password.sh
#

PASSWORD=$(echo -n 'S1JZUFRPTklTR1JFQVQ=' | base64 --decode)
#PASSWORD=$(base64 -d <<< 'S1JZUFRPTklTR1JFQVQ=')

echo $PASSWORD
