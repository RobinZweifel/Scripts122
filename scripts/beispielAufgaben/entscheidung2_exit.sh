#!/bin/bash
# Skript: entscheidung2_exit.sh
# Aufruf: entscheidung2_exit.sh dateiname1 dateiname2
if test $# -ne 2
then
#    Befehlsfolge
    exit 1
else
    if test -e $1
    then
#        Befehlsfolge
        exit 2
    else
#        Befehlsfolge
        exit 3
    fi
    if test -e $2
    then
#        Befehlsfolge
        exit 4
    else
#        Befehlsfolge
        exit 5
    fi
fi
