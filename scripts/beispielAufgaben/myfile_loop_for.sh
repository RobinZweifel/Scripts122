#!/bin/bash
#
# listet 10 Zeilen der Datei 
#
zeile=""
for (( j=10; j>0; j=j-1))
do
	read zeile
	echo $zeile
done <cat.txt

