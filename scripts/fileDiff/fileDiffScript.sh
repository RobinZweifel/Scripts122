#!/bin/bash
#
# Name: fileDiffScript.sh - Unterschied von 2 Files
# -----------------
# SYNOPSIS: fileDiffScript.sh [OPTION]
# Description: Zeigt unterschiedliche Zeilen von FIles

# Autoren: Robin Zweifel
# Version: 1
# Datum: 5.10.2021
#

echo "File 1: $1";
echo "File 2: $2";
echo "";


# Check if parameters are set and check if the parameters are files
if [[ -f "$1" && -f "$2" ]];
then

    # Check wich file is bigger
    if [[ $(wc -l < "$1") > $(wc -l < "$2") ]];
    then
      bigFile=$1
      smallFile=$2

    else
      bigFile=$2
      smallFile=$1

    fi

  rowDiffCount=1

  file1Rows=$(("$(wc -l < "$file1")"+1))

  #Loop through all rows
  count=0
  while [[ $count -le $file1Rows ]];
  do

    rowFile1=$(sed -n ${count}p "$bigFile")
    rowFile2=$(sed -n ${count}p "$smallFile")

    echo "Row from File1 $rowFile1";
    echo "Row from File2 $rowFile2";
    echo ""

    #Check if the rows are equal
    if [[ "$rowFile1" != "$rowFile2" ]];

    then
      ((rowDiffCount++))
      echo "Row is not equal"

    else
      echo "Row is equal"

    fi
    ((count++))

  done

  echo "$rowDiffCount Rows are not equal"

else
  #Output when the Comand is entered wrong
  echo "Comand Failed"
  echo "Please Type: fileDiffScript.sh file1 file2"
fi
