#!/bin/bin/bash
#
# einfaches file lesen
while read line
do
	echo -e "$line \n"
done <cat.txt
# mit IFS
#
#while IFS=: read user pass uid gid full home shell          
#do          
#echo -e "$full :\n\          
# Pseudo : $user\n\          
# UID :\t $uid\n\          
# GID :\t $gid\n\          
# Home :\t $home\n\          
# Shell :\t $shell\n\n"          
#done <cat.txt
