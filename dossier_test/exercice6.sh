#!/bin/bash

# Écrivez un script qui demande à l'utilisateur de saisir une chaîne de caractères.
# Le script doit ensuite afficher la chaîne en majuscules, en minuscules, et sa longueur.
# Enfin, le script doit inverser la chaîne et l'afficher.

echo "Ecrivez quelque chose :"
read expression

string_in_caps="En minuscule : "${expression,,}""
echo "$string_in_caps"
string_in_min="En majuscule : "${expression^^}""
echo "$string_in_min"
string_in_rev="A l'inverse : $(echo "$expression" | rev)"
echo "$string_in_rev"