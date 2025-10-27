#!/usr/bin/env bash
# Script : miniprojet.sh
# Objectif : lire un fichier d'URL et afficher :
# numéro de ligne | URL | code HTTP | encodage (charset)

# Étape 1 — Vérifier que le fichier est donné en argument
if [ -z "$1" ]; then
    echo "Erreur : aucun fichier fourni."
    echo "Usage : $0 <chemin_du_fichier>"
    exit 1
fi

fichier="$1"

# Étape 2 — Vérifier que le fichier existe et est lisible
if [ ! -r "$fichier" ]; then
    echo "Erreur : fichier introuvable ou illisible -> $fichier"
    exit 1
fi

# Étape 3 — Boucle de traitement
n=1
UA="PPE1-2025-script"   # User-Agent simple

while IFS= read -r url_affiche; do
    # ignorer les lignes vides
    [ -z "$url_affiche" ] && continue

    # compléter le schéma si manquant
    if [[ ! "$url_affiche" =~ ^https?:// ]]; then
        req_url="https://$url_affiche"
    else
        req_url="$url_affiche"
    fi

    #  Récupérer le code HTTP
    code=$(curl -s -L -A "$UA" --max-time 10 -o /dev/null -w "%{http_code}" "$req_url")

    # Récupérer l'encodage (charset) depuis l'en-tête Content-Type
    headers=$(curl -s -I -L -A "$UA" --max-time 10 "$req_url")
    encodage=$(printf "%s\n" "$headers" \
        | grep -i '^content-type:' \
        | sed -En 's/.*charset=([^;[:space:]\r]+).*/\1/ip')

    # si rien trouvé → NA
    [ -z "$encodage" ] && encodage="NA"

    #  Afficher les résultats : numéro, URL, code, encodage
    printf "%s\t%s\t%s\t%s\n" "$n" "$url_affiche" "$code" "$encodage"

    ((n++))
    sleep 1
done < "$fichier"


