#!/usr/bin/env bash
# Script : compte_par_type.sh
# Objectif : Compter le nombre de fois qu’un type d’entité (Location, Person, Organization) apparaît dans les fichiers .ann d’une année donnée.

# On récupère les arguments
ANNEE=$1
TYPE=$2

# Dossier où sont les fichiers
CHEMIN="$HOME/PPE1/Exercices/Exercice1/ann"

# 1. Vérifie qu’on a bien deux arguments
if [[ $# -ne 2 ]]; then
    echo "Usage : $0 <annee> <type>"
    exit 1
fi

# 2. Vérifie que le dossier de l’année existe
if [[ ! -d "$CHEMIN/$ANNEE" ]]; then
    echo "Erreur : le dossier $CHEMIN/$ANNEE n'existe pas."
    exit 1
fi

# On lit tous les fichiers .ann de l’année, on filtre sur le TYPE, et on compte les lignes
NB=$(cat "$CHEMIN/$ANNEE"/*.ann | grep "$TYPE" | wc -l)

#  Résultat
echo $NB

