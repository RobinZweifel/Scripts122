#!/usr/bin/env bash

#
#cut -c 7- sed -n '1,218p' ExportSmall.spl
#cut -c 7- ExportSmall.spl

#echo " $0 [input] [output]"

#grep -w "2 [0-9][,0-9]" $input > $output

input=$1
output=$2

 awk '$1 ~ /^[0-2]$/ '  $input | \
 awk '$2 ~ /^[0-25]$/'             | \
 awk -F"'" '{print $2,"     ",$4}' | \
 awk 'length($1)==7' > $output