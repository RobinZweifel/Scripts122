#!/usr/bin/env bash
#
# Name: du_sort_03_2_1.sh - Ausgehend vom aktuellen Verzeichnis, Grösse aller Verzeichnisse und Dateien auflisten
# -----------------
# SYNOPSIS: . du_03_2_1.sh [OPTION]
# Description: Zeigt Groesse der dateien und Verzeichnisse sortiert an.
# Dieses Script listet alle Dateien im aktuellen Verzeichnis
# und rekursiv in den Unterverzeichnis geordnet nach ihrer
# 'disk usage' oder ihrem Namen auf.
# Parameter fuer sort:
#  -k[pos] gibt an welche Spalte sortiert werden soll
#  -g gibt an, dass numerisch sortiert werden soll
# du_sort_1_2_2 -gk1  -> sortiert numerisch auf erste Spalte
# du_sort_1_2_2 -k2r  -> sortiert alph. auf zweite spalte
#                        umgekehrte Reihenfolge
#
# Autoren: Robin Zweifel
# Version: 1.0
# Datum: 14.09.2021
#
#Ausgabe der Groesse aller Vezeichnisse
echo "Ausgabe der Groesse aller Verzeichnisse und Dateien"
du -ab
echo "Grösse des verzeichnis: " $(du -sb)