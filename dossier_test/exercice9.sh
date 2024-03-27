#!/bin/bash

# path log: Public/dev.log
LOG_FILE="dev_log.txt"

# initialisation des variables pour calculer le niveau de gravité
ERROR_COUNT=0
INFO_COUNT=0
DEBUG_COUNT=0

# analyse du fichier de log
while read line; do
    if [[ $line == *"ERROR"* ]]; then
        ((ERROR_COUNT++))
    elif [[ $line == *"INFO"* ]]; then
        ((INFO_COUNT++))
    elif [[ $line == *"DEBUG"* ]]; then
        ((DEBUG_COUNT++))
    fi
done < $LOG_FILE

# Compte rendu du journal
echo "Analyse du journal $LOG_FILE, voici les résultats des erreurs, info et debugs :"
echo "ERROR: $ERROR_COUNT"
echo "INFO: $INFO_COUNT"
echo "DEBUG: $DEBUG_COUNT"