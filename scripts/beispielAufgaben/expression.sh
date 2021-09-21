#!/bin/bash
#
#
x=10
echo "mit Backticks :" `expr $x + 10`

echo "mit Ausdrücken : " $(expr $x + 10)

echo "Mit Klammern : "  $(($x + 10))

echo -e "Hallo, $(whoami)\n"

