#!/bin/bash
#Script pour compter le nombre de "Location" dans les fichiers .ann pour chaque année
for annee in 2016 2017 2018
do
    # Vérifie que le dossier existe
    if [ -d "$annee" ]; then
        # Compte les lignes contenant "Location"
        nb=$(grep -c "Location" $annee/*.ann 2>/dev/null | awk -F: '{s+=$2} END{print s}')
        echo "$annee : $nb"
    else
        echo "$annee : dossier inexistant"
    fi
done
