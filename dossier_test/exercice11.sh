#!/bin/bash

echo "Quelle est votre note ?"

read note
#La logique d'évaluation de la note implémentée dans une fonction nommée appreciation
# Si la note est entre 16 et 20, affichez « Très bien ».
# Si la note est entre 14 et 16 (non inclus), affichez « Bien ».
# Si la note est entre 12 et 14 (non inclus), affichez « Assez bien ».
# Si la note est entre 10 et 12 (non inclus), affichez « Moyen ».
# Si la note est inférieure à 10, affichez « Insuffisant ».

appreciation() {
    if (( note < 10 )); then
        echo "Insuffisant"
    elif (( note >= 10 && note < 12 )); then 
        echo "Moyen"
    elif (( note >= 12 && note < 14 )); then
        echo "Assez bien"
    elif (( note >= 14 && note < 16 )); then
        echo "Bien"
    elif (( note >= 16 && note <= 20 )); then
        echo "Très bien"
    fi
}
appreciation