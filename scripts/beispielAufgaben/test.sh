#!/bin/bash
# Verwenden von Variablen
# Name: var - Experimente mit variablen
# Synopsis: var
# Description: Zeigt experimente mit variablen in bash 
# Autor:
# Datum:
# Optionen:
# Dateien:
a="Hallo Leute"
echo "Die Variable a beinhaltet"
# Verwendung mit $
echo $a
b="Guten Abend!"
echo "Die Variable b beinhaltet"
echo $b
# Oder nebeneinander
echo $a $b
# andere Schreibweise
echo $a
echo $b
# Beispiel 2
x=10
echo `expr $x + 1`
echo $(expr $x - 1)
echo $((x*2))
# Benutzervariablen einlesen
# Variante 1 mit "echo" und "read"
# echo "Bitte Zahl einlesen"
read Antwort
echo $Antwort
# nur mit read
read -p "Bitte Zahl1 einlesen: " zahl1
echo $zahl1
read -p "Bitte Zahl2 einlesen: " zahl2
echo $((zahl1*zahl2))
# SHELL Variablen
echo "Alle SHELL variablen"
echo -e "Hello, mein Name ist: $(whoami)\n" 
echo -e "Hello, mein Compi ist: $HOSTNAME\n" 
echo -e "Hello, mein Home ist: $HOME\n" 
echo -e "Hello, meine Bash version ist: $BASH_VERSION\n" 
PS1="touch me:"
clear
echo -e "Hello, mein prompt ist: $PS1 \n" 









