#!/usr/bin/env bash
# Script : comptes.sh
# Objectif : compter le nombre de fichiers .ann contenant "Location" pour chaque année

echo "Argument donné : $1"

CHEMIN="$HOME/PPE1/Exercices/Exercice1/ann"

if [[ ! -d $CHEMIN ]]; then
    echo "Erreur, ce dossier $CHEMIN n'existe pas."
    exit 1
fi

# Exercice 4 : Boucle sur les années
for ANNEE in 2016 2017 2018
do
    echo "Nombre de lieux en $ANNEE :"
    cat "$CHEMIN/$ANNEE"/*.ann | grep "Location" | wc -l
done

