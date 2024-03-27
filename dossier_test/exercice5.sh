#!/bin/bash

echo "Entrez un nom de dossier : "
read dossier

if [ -d "$dossier" ]; then 
    echo "le dossier existe"
    for fichier in "$dossier"/*; do
        echo "$(basename $fichier)"
    done
else 
    echo "erreur, le dossier n'existe pas"
fi

#S'il existe, le script doit afficher tous les fichiers du dossier en utilisant une boucle for.
