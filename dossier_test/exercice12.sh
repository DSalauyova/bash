#!/bin/bash

#compte et affiche le nombre de fichiers ordinaires 
path="../dossier_test"
FILE_COUNT=$(find "$path" -type f | wc -l)
#ainsi que le nombre de sous-répertoires présents dans un répertoire spécifique
FOLDER_COUNT=$(find "$path" -mindepth 1 -type d | wc -l)

echo "Le nombre de fichiers dans " $path "est" $FILE_COUNT
echo "Le nombre de repertoires dans " $path "est" $FOLDER_COUNT