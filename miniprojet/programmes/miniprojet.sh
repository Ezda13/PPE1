#!/usr/bin/env bash
# Script : miniprojet.sh
# Objectif : lire un fichier donné en argument et afficher chaque ligne précédée de son numéro (séparée par une tabulation)

# Question 2.1 : Valider l’argument
if [ -z "$1" ]; then
    echo "Erreur : aucun fichier fourni."
    echo "Usage : $0 <chemin_du_fichier>"
    exit 1
fi

# Question 2 : Transformer le chemin en paramètre
fichier="$1"

# Vérifier que le fichier existe
if [ ! -r "$fichier" ]; then
    echo "Erreur : fichier introuvable ou illisible -> $fichier"
    exit 1
fi

# Question 3 : Afficher le numéro de ligne avant chaque URL (séparé par une tabulation)
n=1
while read -r line; do
    echo -e "${n}\t${line}"
    ((n++))
done < "$fichier"

