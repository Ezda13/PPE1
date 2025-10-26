#!/usr/bin/env bash
# Script : compte_par_type_par_an.sh
# Objectif : Afficher le nombre d'occurrences d'un type donné (Location, Person, Organization) pour les années 2016, 2017 et 2018.

# On récupère le type (1er argument)
TYPE="$1"

# On définit le chemin vers le dossier contenant les fichiers .ann
CHEMIN="$HOME/PPE1/Exercices/Exercice1/ann"

# Étape 1 : Vérifier que le type est donné
if [[ -z "$TYPE" ]]; then
  echo "Usage : $0 <type: Location|Person|Organization>"
  exit 1
fi

# Étape 2 : Vérifier que le type est valide
if [[ "$TYPE" != "Location" && "$TYPE" != "Person" && "$TYPE" != "Organization" ]]; then
  echo "Erreur : type invalide ($TYPE)."
  echo "Utilisation : $0 <Location|Person|Organization>"
  exit 1
fi

# Étape 3 : Vérifier que le dossier existe
if [[ ! -d "$CHEMIN" ]]; then
  echo "Erreur : le dossier $CHEMIN n'existe pas."
  exit 1
fi

# Étape 4 : Boucler sur les années 
for ANNEE in 2016 2017 2018
do
  # Appelle ton script précédent pour chaque année
  NB=$(./compte_par_type.sh "$ANNEE" "$TYPE")
  echo "Nombre de $TYPE en $ANNEE : $NB"
done

