#!/bin/bash
#
# Name: zahlenRaten.sh
# -----------------
# SYNOPSIS: . zahlenRaten.sh [OPTION]
# Description: Zahlen raten spiel

# Autoren: Robin Zweifel
# Version: 1
# Datum: 5.10.2021


n1=$[($RANDOM % 100) +1]
guesses=1
echo -n "Errate die Zahl zwischen 1 und 100"

while read n2; do

if   [[ $n2 -eq $n1 ]]; then
break;
else
echo
if [[ $n2 -gt $n1 ]]; then
echo -n "Zahl zu gross:"
elif [[ $n2 -lt $n1 ]]; then
echo -n "Zahl zu klein:"
fi
fi
guesses=$((guesses+1))

done
echo
echo "Richtig! Du hast $guesses Versuche gebraucht um die Zahl herauszufinden"


