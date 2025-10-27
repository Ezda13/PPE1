#!/usr/bin/env bash
# Script : miniprojet.sh
# Objectif : lire un fichier d'URL et afficher :
# numéro | URL | code HTTP | encodage | nombre de mots

# Vérifier qu’un argument est fourni
if [ -z "$1" ]; then
    echo "Erreur : aucun fichier fourni."
    echo "Usage : $0 <chemin_du_fichier>"
    exit 1
fi

fichier="$1"

# Vérifier que le fichier existe et est lisible
if [ ! -r "$fichier" ]; then
    echo "Erreur : fichier introuvable ou illisible -> $fichier"
    exit 1
fi

# User-Agent simple
UA="PPE1-2025-script"

n=1

# Boucle principale
while IFS= read -r url_affiche; do
    # Ignorer les lignes vides
    [ -z "$url_affiche" ] && continue

    # Compléter le schéma si manquant
    if [[ ! "$url_affiche" =~ ^https?:// ]]; then
        req_url="https://$url_affiche"
    else
        req_url="$url_affiche"
    fi

    #  Code HTTP
    code=$(curl -s -L -A "$UA" --max-time 10 -o /dev/null -w "%{http_code}" "$req_url")

    #  Encodage (charset)
    headers=$(curl -s -I -L -A "$UA" --max-time 10 "$req_url")
    encodage=$(printf "%s\n" "$headers" \
        | grep -i '^content-type:' \
        | sed -En 's/.*charset=([^;[:space:]\r]+).*/\1/ip')
    [ -z "$encodage" ] && encodage="NA"

    #  Nombre de mots (si succès HTTP 2xx)
    if [[ $code =~ ^2..$ ]]; then
        nb_mots=$(lynx -dump -nolist "$req_url" 2>/dev/null | wc -w | tr -d ' ')
    else
        nb_mots="NA"
    fi

    #  Afficher les résultats sur une seule ligne
    printf "%s\t%s\t%s\t%s\t%s\n" "$n" "$url_affiche" "$code" "$encodage" "$nb_mots"

    ((n++))
    sleep 1
done < "$fichier"

