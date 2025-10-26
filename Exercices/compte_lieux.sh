#!/bin/bash

# Le  chemin vers mes fichiers
CHEMIN="$HOME/PPE1/Exercices/Exercice1/ann"

# On récupère les 3 arguments : année, mois, et nombre de lieux à afficher
ANNEE="${1:-*}"
MOIS="${2:-*}"
NB="${3:-10}"

echo "Année, Mois et Nombre de lieux : $ANNEE, $MOIS, $NB"

# On construit le chemin vers les fichiers .ann
FICHIERS="$CHEMIN"/$ANNEE/${ANNEE}_${MOIS}_*-*.ann

# Si des fichiers existent, on fait le classement
if ls $FICHIERS 1> /dev/null 2>&1; then
  CLASSEMENT=$( cat $FICHIERS | grep -E "Location" | cut -f3 | sort | uniq -c | sort -nr )
  echo "Classement des lieux les plus cités pour $ANNEE/$MOIS :"
  echo "$CLASSEMENT" | head -n "$NB"
else
  echo "Aucun fichier trouvé pour $ANNEE/$MOIS"
fi



