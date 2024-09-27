#!/bin/bash

# This script finds the password for the next level from the task https://overthewire.org/wargames/krypton/krypton0.html

PASSWORD=$(echo -n 'S1JZUFRPTklTR1JFQVQ=' | base64 --decode)
#PASSWORD=$(base64 -d <<< 'S1JZUFRPTklTR1JFQVQ=')

echo $PASSWORD
