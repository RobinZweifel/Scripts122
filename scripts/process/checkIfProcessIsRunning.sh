#!/bin/bash
#
# Name: checkIfProcessIsRunning.sh
# -----------------
# SYNOPSIS: checkIfProcessIsRunning.sh [OPTION]
# Description: Zeigt ob ein prozess am laufen ist

# Autoren: Robin Zweifel
# Version: 1
# Datum: 5.10.2021
#

echo "Enter a process number you want to check"

#Input is the process
read input
#Returns True when process is not running and false when ist running
if [ `ps -ef | grep ${input} | grep -v grep | wc -l` -eq 0 ];
  then
	echo "Process is not running"
	else
	echo "Process is running"
fi