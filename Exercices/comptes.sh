#!/usr/bin/env bash
# Script : comptes.sh
# Objet : compter le nombre de FICHIERS .ann contenant "Location" pour chaque année

echo "Argument donné : $1"

CHEMIN="$HOME/PPE1/Exercices/Exercice1/ann"

if [[ ! -d $CHEMIN ]]; then
    echo "Erreur, ce dossier $CHEMIN existe pas."
    exit 1
fi

echo "Nombre de lieux en 2016 :"
cat $CHEMIN/2016/*.ann | grep "Location" | wc -l 

echo "Nombre de lieux en 2017 :"
cat $CHEMIN/2017/*.ann | grep "Location" | wc -l

echo "Nombre de lieux en 2018 :"
cat $CHEMIN/2018/*.ann | grep "Location" | wc -l

