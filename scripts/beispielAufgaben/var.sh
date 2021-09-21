#!/bin/bash
# Verwenden von Variablen
# Name: var - Experimente mit variablen
# Synopsis: var
# Description: Zeigt experimente mit variablen in bash 
# Autor:
# Datum:
# Optionen:
# Dateien:

hello="Hallo Leute"
echo "Variable hello beinhaltet $hello"
# echo $a
y=10
echo $((y + 10))
if [ y == 20 ]; then
  echo "y = $y"
fi
#
read -p "Zahl eingeben: " zahl1
echo $zahl1
# 
echo "Bash Version:" $BASH_VERSION
echo $HOME
echo $HOSTNAME
echo $JAVA_HOME

echo "Der dateiname ist:" $(basename $1)
echo "Anzahl Parameter: $#"
echo "Inhalt der Parameter: $*"


