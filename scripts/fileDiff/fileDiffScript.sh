#!/bin/bash
#
# Name: fileDiffScript.sh - Unterschied von 2 Files
# -----------------
# SYNOPSIS: du_3_2_3.sh [OPTION]
# Description: Zeigt unterschiedliche Zeilen von FIles

# Autoren: Robin Zweifel
# Version: 1
# Datum: 5.10.2021
#
#

echo "Files:";
echo "File 1: $1";
echo "File 2: $2";

if [[ -f "$1" && -f "$2" ]]; then
  if [[ $(wc -l < "$1") -gt $(wc -l < "$2") ]];
  then
    file1=$1
    file2=$2
  else
    file1=$2
    file2=$1
  fi
  rowsDifferent=0

  count=1;

  while [[ $count -le $rowsFile1 ]]
  do
    row1=$(sed -n ${count}p "$file1")
    row2=$(sed -n ${count}p "$file2")

    echo "Zeile $count: $row1"
    echo "Zeile $count: $row2"
    echo ""

    if [[ "$row1" != "$row2" ]];
    then
      ((rowsDifferent=rowsDifferent+1))
      echo "Ungleiche Zeilen"
    else
      echo "Gleiche Zeilen"
    fi
    ((count=count+1))

  done
  echo "$rowsDifferent Zeilen sind ungleich!"

else
  echo "Richtiger aufruf: fileDiffScript.sh file1 file2"
fi