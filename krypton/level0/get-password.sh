#!/bin/bash

#PASSWORD=$(base64 -d <<< 'S1JZUFRPTklTR1JFQVQ=')
PASSWORD=$(echo -n 'S1JZUFRPTklTR1JFQVQ=' | base64 --decode)

echo $PASSWORD
