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
#exercice 2 modifications pour le code HTTP 
n=1
while read -r line; do
    url="$line"
    # si le schéma http/https manque, on ajoute https://
    if [[ ! "$url" =~ ^https?:// ]]; then
        url="https://$url"
    fi

    # récupération du code HTTP avec curl
    code=$(curl -s -L -o /dev/null -w "%{http_code}" "$url")

    # affichage : numéro<TAB>URL<TAB>code
    printf "%s\t%s\t%s\n" "$n" "$line" "$code"
    ((n++))
done < "$fichier"

