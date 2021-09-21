#!/bin/bash
# Skript: entscheidung.sh
# Aufruf: entscheidung.sh dateiname1 dateiname2
# if test $# -ne 2
if [ $# != 2 ]; then
	echo "Sie müssen zwei Dateinamen als Argumente eingeben!"
	echo "Usage: entscheidung.sh dateiname1 dateiname2"
else
   	if [ -f $1 ] && [ -f $2 ]; then	
     		echo "Hier werden die beiden Dateien bearbeitet"
     		echo "Datei $1 und Datei $2 sind Dateien"
    		echo $1
    		echo $2	
	else
		echo "$1 und $2 sind keine Dateien!!"
	fi

fi
