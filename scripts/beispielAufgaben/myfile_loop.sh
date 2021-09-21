#!/bin/bash
#
# listet alle dateien und verzeichnisse im aktuellen verzeichnis
#
for myFile in ../* ../backup/*
do
	if [ -d "$myFile" ]
	then
		echo "$myFile  (dir)"
	else
		echo "$myFile (file)"
	fi
done

