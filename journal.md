# Journal de bord du projet encadré

## 2025-10-01 — Première tentative
- Création du dépôt *PPE1* sur GitHub.
- Difficultés rencontrées pour créer le fichier `journal.md` et comprendre les premières commandes Git.
- Aucune modification enregistrée à cette date.

## 2025-10-14 — Nouvelle mise en route
- Reprise complète de l’exercice de mise en pratique Git.
- Vérification du dépôt existant (`Ezda13/PPE1`) et suppression des anciens essais inutiles.
- Création réussie du fichier `journal.md` directement sur GitHub.
- Préparation à la synchronisation locale (commande `git pull`).
-
- Clonage du dépôt *PPE1* depuis GitHub sur la machine locale.
- Vérification de la présence du fichier `journal.md`.
- Préparation à la modification et à la synchronisation avec la branche principale.
-
- J’ai tenté de faire un `git push` en utilisant l’URL HTTPS de mon dépôt GitHub, mais j’ai obtenu l’erreur :
  *« Password authentication is not supported for Git operations »*.
- GitHub ne permet plus l’utilisation des mots de passe classiques pour les opérations Git, donc j’ai décidé d’utiliser **SSH**.
- J’ai constaté qu’une clé SSH était déjà présente sur mon ordinateur, je l’ai utilisée directement.
- J’ai modifié l’URL de mon dépôt pour passer en SSH, testé la connexion et pu envoyer mon commit sans erreur.
-
- étapes réalisées :
- J’ai commencé par vérifier que j’étais bien dans le bon dossier du projet à l’aide des commandes : pwd et ls
- ensuite, j'ai vérifié à quelle Git envoyait mes modifications : 
git remote -v
- adresse correspond à une conexion HTTPS, Or GitHub ne permet plus cette méthode, ce qui provoquait l’erreur rencontrée. pour corriger cela, j’ai changé l’adresse du dépôt afin d’utiliser SSH, 
git remote set-url origin git@github.com:Ezda13/PPE1.git
git remote -v
- Après la modification, l’URL affichée commençait bien par : git@github.com:
Ce qui signifie que la configuration SSH était bien prise en compte.
- J’ai ensuite testé ma connexion pour vérifier que GitHub reconnaissait bien mon ordinateur : 
ssh -T git@github.com
ce message s'est affiché : Hi Ezda13! You've successfully authenticated...
Ce qui confirme que la connexion SSH fonctionne correctement.

- Une fois la connexion configurée, j’ai enregistré mes modifications locales avec : 
git add journal.md
git commit -m "MAJ journal : mes séances de rattrapages"

- Enfin, j’ai envoyé mes modifications sur le dépôt en ligne avec :
git push origin main
Cette fois, la commande a fonctionné sans erreur.

# Récapitulatif des commandes utilisées
- Vérifier le dossier où on se trouve:pwd
- lister le contenu du dossier : ls
- voir l'adresse du dépot GitHub associée au projet : git remote -v
Montre les URL que Git utilise pour communiquer avec GitHub :
fetch = pour récupérer du contenu (pull)
push = pour envoyer du contenu (push)
- modifier l'adresse du dépot pour utiliser SSH : 
git remote set-url origin git@github.com:Ezda13/PPE1.git
- tester la conexion avec GitHub : ssh -T git@github.com
- verifier l'etat du projet : git status 
- ajouter un fichier à l'enregistrement : git add journal.md
- enregistrer les modifications localement : git commit -m "MAJ journal : mes séances de rattrapages" 

- envoyer les changements sur GitHub : git push origin main
- pour ouvrir gedit sur konsol : hulya@hulya:~/PPE1$ gedit journal.md
- pour enregistrer la modification fait sur pc : 
git status
git add journal.md
git commit -m "MAJ journal : ajout des explications et du récapilutatif"
git push origin main

# Correction de l’emplacement du tag

J’avais déjà créé un tag il y a deux semaines, mais je viens de me rendre compte qu’il n’était pas au bon endroit.  
Je pensais que le tag demandé dans le TD pouvait être fait sur n’importe quel dépôt, donc je l’avais créé sur mon dépôt d’essai “git-along”.  

En relisant les consignes, j’ai compris qu’il fallait en réalité créer le tag sur le dépôt PPE1, celui lié au travail à rendre sur iSorbonne.  
C’est pour cette raison que j’ai refait toutes les étapes de vérification et que j’ai déplacé le tag au bon endroit, c’est-à-dire sur le dépôt `Ezda13/PPE1`.

Le tag s’appelle `gitinto` et correspond à la version finale du TD Git.  
Je n’avais pas vu plus tôt qu’il fallait rendre le lien du tag au professeur, c’est pourquoi j’ai corrigé cela aujourd’hui.

## 2025-10-15
TD script bash :
Au début de mon travail, j’ai commencé par organiser mes dossiers. J’ai placé le dossier Exercice1 à l’intérieur du dossier PPE1 en utilisant la commande mv Exercice1 PPE1/. Ensuite, dans le sous-dossier ann, j’ai créé deux nouveaux dossiers nommés 2017 et 2018 grâce à la commande mkdir 2017 2018. En observant le contenu du dossier ann, j’ai remarqué qu’il y avait un dossier 01 dans lequel se trouvaient tous les fichiers relatifs à 2016, tandis que les dossiers 2017 et 2018 étaient encore vides. J’ai donc décidé de déplacer tout le contenu de 01 directement dans 2016 avec la commande mv 2016/01/* 2016/, puis j’ai supprimé le dossier 01 devenu vide en tapant rmdir 01.

Une fois cette première réorganisation faite, j’ai déplacé les fichiers correspondant à chaque année dans leur dossier respectif. Pour cela, j’ai utilisé les commandes mv 2016/*2017*.ann 2017/ et mv 2016/*2018*.ann 2018/. Ces déplacements m’ont permis d’avoir un dossier ann proprement organisé avec trois sous-dossiers : 2016, 2017 et 2018, chacun contenant les fichiers de son année.

Ensuite, j’ai créé un nouveau dossier appelé Exercices à la racine de PPE1 avec la commande mkdir Exercices. Ce dossier allait servir à regrouper tous mes scripts Bash. J’y ai créé un premier script vide nommé comptes.sh grâce à la commande touch Exercices/comptes.sh. Après cela, j’ai ajouté ce nouveau dossier à mon dépôt Git en utilisant successivement git add Exercices, git commit -m "Ajout du dossier Exercices avec un script vide" puis git push pour l’envoyer sur GitHub.

J’ai ensuite déplacé le dossier Exercice1 à l’intérieur de Exercices à l’aide de la commande mv Exercice1 Exercices/, puis j’ai enregistré cette modification sur GitHub avec les mêmes commandes : git add Exercices, git commit -m "Déplacement du dossier Exercice1 dans Exercices" et enfin git push.

Pour terminer cette partie d’organisation, j’ai aussi rangé les fichiers contenus dans Exercice1 par ville. Par exemple, pour regrouper tous les fichiers correspondant à Tokyo dans un dossier dédié, j’ai utilisé la commande mv *Tokyo* Tokyo/ 2>/dev/null, qui déplace tous les fichiers contenant “Tokyo” dans leur dossier tout en ignorant les éventuelles erreurs.

À la fin de cette série de manipulations, tous mes fichiers étaient bien rangés dans les bons dossiers selon leur année et leur ville. Mon projet PPE1 était prêt à accueillir les différents scripts Bash demandés dans les exercices, et l’ensemble de mes modifications était correctement enregistré et synchronisé sur GitHub.

À ce stade, le dossier ann contenait désormais trois sous-dossiers (2016, 2017, 2018) correctement remplis. J’ai poursuivi l’organisation en créant un dossier Exercices à la racine du projet PPE1 (mkdir Exercices), qui allait contenir mes différents scripts Bash. J’y ai ajouté un premier fichier vide, comptes.sh, à l’aide de touch Exercices/comptes.sh.

Une fois ce fichier créé, j’ai ajouté le dossier Exercices à mon dépôt Git et je l’ai synchronisé sur GitHub avec les commandes git add Exercices, git commit -m "Ajout du dossier Exercices avec un script vide" et git push. J’ai ensuite déplacé le dossier Exercice1 à l’intérieur du dossier Exercices (mv Exercice1 Exercices/) puis j’ai de nouveau enregistré ces changements avec git add Exercices, git commit -m "Déplacement du dossier Exercice1 dans Exercices" et git push. Enfin, j’ai rangé les fichiers d’annotation par ville pour plus de clarté, par exemple en déplaçant tous les fichiers contenant “Tokyo” dans un dossier spécifique grâce à la commande mv *Tokyo* Tokyo/ 2>/dev/null.

Pour l’exercice 1, j’ai dû écrire un script comptes.sh permettant de compter le nombre de fichiers .ann contenant le mot “Location” pour chaque année (2016, 2017, 2018). Le script devait écrire le résultat sur la sortie standard. J’ai donc commencé par créer un script simple qui utilisait la commande grep pour rechercher le mot “Location” et wc -l pour compter les occurrences. La première version répétait trois fois le même bloc de code, un pour chaque année.

Par la suite, j’ai amélioré ce script pour l’exercice 4, en utilisant une boucle for afin d’itérer automatiquement sur les années. Cela rendait le script plus propre et plus flexible. Voici la logique :
le script parcourt les dossiers 2016, 2017 et 2018 avec une boucle for, puis pour chaque année, il exécute une commande grep -o "Location" sur tous les fichiers .ann du dossier correspondant, avant de compter le nombre total de résultats avec wc -l.

Pour l’exercice 2, j’ai dû écrire plusieurs scripts utilisant les arguments de ligne de commande.
Le premier, compte_par_type.sh, devait compter les entités d’un certain type (par exemple Location, Person ou Organization) pour une année donnée, passée en argument. J’ai donc prévu deux arguments : l’année et le type. Le script récupère les deux valeurs avec $1 et $2, puis utilise grep pour filtrer les lignes contenant le type demandé et wc -l pour afficher le nombre total d’occurrences.
Le second script, compte_par_type_par_an.sh, devait appeler le premier script trois fois, une fois pour chaque année, afin d’obtenir un petit tableau récapitulatif

J’ai utilisé une boucle for dans ce script aussi, qui exécute le précédent pour chaque année et affiche le résultat de manière lisible.

La deuxième partie de l’exercice 2 (b) demandait un script compte_lieux.sh pour établir le classement des lieux les plus cités. Celui-ci devait accepter trois arguments : l’année, le mois et le nombre de lieux à afficher. Il devait également accepter le caractère * pour l’année et le mois. Pour cela, j’ai utilisé la syntaxe ${1:-*}, ${2:-*}, ${3:-10}, qui permet de définir des valeurs par défaut si les arguments ne sont pas fournis. Le script utilise ensuite une combinaison de commandes (grep, cut, sort, uniq -c, sort -nr) pour compter combien de fois chaque lieu apparaît et afficher les plus cités selon le nombre demandé. mon script affichait le classement directement dans le terminal, comme demandé, sans créer de fichier de sortie.

Pour l’exercice 3, il fallait modifier tous les scripts précédents afin de valider leurs arguments. J’ai ajouté des conditions if au début de chaque script pour vérifier que le bon nombre d’arguments avait été fourni, et que les valeurs étaient valides.

Enfin, pour l’exercice 4, j’ai simplement vérifié que mon script comptes.sh utilisait bien une boucle ((comme expliqué au debut). Une fois tous mes scripts terminés et fonctionnels, j’ai vérifié qu’ils se trouvaient bien dans le dossier Exercices : comptes.sh, compte_par_type.sh, compte_par_type_par_an.sh et compte_lieux.sh.
J’ai ensuite tout synchronisé avec GitHub grâce aux commandes : git add Exercices/*.sh
git commit -m "Bash : scripts finalisés (ex1–ex4)"
git push
Enfin, j’ai créé le tag demandé pour signaler la fin des exercices : 
git tag -a fin-ex-scripts -m "Fin des exercices Bash"
git push origin fin-ex-scripts

# Example: lire et expliquer ce code 
Le script commence par vérifier qu’un seul argument est bien donné lors de l’exécution, grâce à la condition if [ $# -ne 1 ]. S’il n’y a pas exactement un argument, le programme affiche un message d’erreur et s’arrête avec exit. L’argument attendu est le nom du fichier contenant la liste d’URLs, qui est ensuite enregistré dans la variable FICHIER_URLS. Deux compteurs, OK et NOK, sont initialisés à zéro pour compter respectivement le nombre d’URLs valides et non valides.

La boucle while read -r LINE; do ... done < $FICHIER_URLS lit le fichier ligne par ligne. Pour chaque ligne, le script affiche son contenu puis vérifie si elle correspond à une URL correcte à l’aide de l’expression régulière [[ $LINE =~ ^https?:// ]]. Si la ligne commence bien par http:// ou https://, elle est considérée comme valide, et le compteur OK est augmenté de un. Sinon, le compteur NOK est incrémenté.

À la fin de la lecture, le script affiche un résumé indiquant combien de lignes correspondaient à de véritables URLs et combien étaient douteuses. 
( à verifier si commentaire bon ou pas) 


## 2025-10-26
# Mini projet :  
Exercice 1 : lire les lignes d'un fichier en bash 
question 1) Pourquoi ne pas utiliser cat ? 
-cat fichier | while read
lance un processus en plus (inutile) et, en Bash, met la boucle dans un sous-shell, donc les variables modifiées dans la boucle seront perdues après la boucle. 
-while read ...; <.fichier
lit directement depuis le fichier, sans sous-shell, plus propre et plus fiable (et légérement plus rapide). 
On n’utilise pas cat ici parce que la boucle while read peut lire directement depuis le fichier avec la redirection <.
Donc utiliser cat créerait un sous-processus inutile (à cause du pipe |), ce qui rendrait le script moins efficace et ferait perdre les variables définies à l’intérieur de la boucle.

question 2) Comment transformer "urls/fr.txt" en paramètre du script ?

Pour transformer "urls/fr.txt" en paramètre,  il faut remplacer le chemin écrit en dur dans le code par une variable qui récupère le premier argument donné au script. En Bash, le premier argument est stocké dans $1. 

fichier=$1  # le fichier donné en argument devient la variable $URLS
n=1 
while read -r line; do
    echo -e "${n}\t${line}"
    ((n++))
done < "$fichier"

2.1) Valider l’argument : ajouter le code nécessaire pour s’assurer qu’on donne bien un argument au script, sinon on s’arrête

!/usr/bin/env bash

 Vérifier qu’un argument est donné
if [-z "$" ]; then
    echo "Erreur : aucun fichier fourni."
    echo "Usage : $0 <chemin_du_fichier>"
    exit 1
fi

question 3) Comment afficher le numéro de ligne avant chaque URL (sur la même ligne) ? (Bien séparer les valeurs par des tabulations)
On peut utiliser une variable compteur (ex : n) pour numéroter chaque ligne lue par la boucle.
On affiche le numéro et l’URL séparés par une tabulation (\t).

## Mini Projet : Étapes réalisées

Exercice 1 – Lecture d’un fichier et affichage des lignes

1.Création du script miniprojet.sh
J’ai commencé par écrire une première version du script qui lit le fichier avec :

while read -r line; do
    echo "$line"
done < "urls/fr.txt"

J’ai compris qu’on n’utilise pas cat ici, car la boucle while read peut lire directement le fichier avec la redirection <, sans créer de sous-processus inutile.

2.Transformation du chemin en paramètre du script
J’ai ensuite remplacé le chemin écrit en dur par un argument passé lors de l’exécution :

./miniprojet.sh urls/fr.txt

et dans le script :
fichier="$1"
done < "$fichier"

3.Validation de l’argument
Pour vérifier qu’un fichier est bien donné en entrée et qu’il existe, j’ai ajouté :

if [ -z "$1" ]; then
    echo "Erreur : aucun fichier fourni."
    echo "Usage : $0 <chemin_du_fichier>"
    exit 1
fi

if [ ! -r "$fichier" ]; then
    echo "Erreur : fichier introuvable ou illisible -> $fichier"
    exit 1
fi

4.Affichage du numéro de ligne avant chaque URL
Enfin, j’ai ajouté un compteur n et la commande echo -e pour séparer les valeurs par une tabulation :

n=1
while read -r line; do
    echo -e "${n}\t${line}"
    ((n++))
done < "$fichier"

et j'ai enregistrée une premiere version du travail. 

Exercice 2 - Récuperer les métadonnées de collecte 
1.Récupération du code HTTP
J’ai utilisé la commande curl pour envoyer une requête HTTP vers chaque URL et afficher uniquement le code de réponse :

curl -s -L -A "$UA" --max-time 10 -o /dev/null -w "%{http_code}" "$req_url"

-s : mode silencieux,

-L : suit les redirections,

-A : indique un User-Agent,

-w "%{http_code}" : affiche seulement le code (200, 404, 000, etc.).

Cela m’a permis d’obtenir une nouvelle colonne dans la sortie du script indiquant si la requête a réussi (200), échoué (404) ou été refusée (429).

2.Récupération de l’encodage (charset)
Pour récupérer le charset, j’ai utilisé curl -I pour ne demander que les en-têtes HTTP.
Ensuite, j’ai filtré la ligne Content-Type et extrait la valeur du charset avec grep et sed :

headers=$(curl -s -I -L -A "$UA" --max-time 10 "$req_url")
encodage=$(printf "%s\n" "$headers" \
    | grep -i '^content-type:' \
    | sed -En 's/.*charset=([^;[:space:]\r]+).*/\1/ip')
[ -z "$encodage" ] && encodage="NA"

Si aucun encodage n’était indiqué, j’ai remplacé la valeur par NA.

3.Comptage du nombre de mots dans la page
En utilisant l’outil lynx, j’ai extrait uniquement le texte de la page et compté les mots avec wc -w :

if [[ $code =~ ^2..$ ]]; then
    nb_mots=$(lynx -dump -nolist "$req_url" 2>/dev/null | wc -w | tr -d ' ')
else
    nb_mots="NA"
fi

Cette étape permet d’ajouter une dernière colonne : le nombre de mots de chaque page, uniquement si la requête renvoie un code de succès (2xx).

4.Affichage complet et mise en forme
À la fin du traitement, j’ai affiché les résultats sous forme de tableau tabulé :

printf "%s\t%s\t%s\t%s\t%s\n" "$n" "$url_affiche" "$code" "$encodage" "$nb_mots"
((n++))

Les résultats finaux ont ensuite été exportés dans un fichier TSV (tableau-fr.tsv) à l’aide des commandes :

printf "id\turl\tcode\tcharset\tnb_mots\n" > ../tableaux/tableau-fr.tsv
./miniprojet.sh ../urls/fr.txt >> ../tableaux/tableau-fr.tsv

##08/11/2025##

##miniprojet2##
 Vérification et correction du fichier tableau-fr.tsv
Lors de la vérification du miniprojet 1, le script s’exécutait correctement à l’écran (les résultats s’affichaient dans le terminal), mais le fichier tableau-fr.tsv restait vide.
Après analyse, le problème venait du fait que la sortie du script n’était pas redirigée vers un fichier : le script affichait les résultats, mais ne les enregistrait nulle part.
Pour corriger cela, j’ai relancé le script en redirigeant la sortie standard vers le fichier TSV :
./miniprojet.sh ../urls/fr.txt > ../tableaux/tableau-fr.tsv
Cette commande a permis de générer correctement le fichier tableau-fr.tsv avec les résultats complets (URL, code HTTP, encodage et taille).
La vérification avec la commande head -n 5 ../tableaux/tableau-fr.tsv a confirmé que le contenu était bien enregistré.
Grâce à cette manipulation, le fichier TSV est désormais complet et prêt à être converti en HTML pour le miniprojet 2.

Mini-projet 2 — Transformation TSV → HTML

cd ~/PPE1/miniprojet
touch tableaux/tableau-fr.html
gedit tableaux/tableau-fr.html &
    2. Structure de base du document.
Rédaction manuelle du squelette :
    • <!DOCTYPE html>, <html lang="fr">
    • <head> avec <meta charset="UTF-8">, <title>Tableau des résultats – FR</title> et un style minimal (bordures, gris pour l’en-tête, alternance de lignes).
    • <body> avec <h1>Tableau des résultats – FR</h1> et un <table>.
    3. Création de l’en-tête de tableau (<thead>).
À partir des colonnes observées dans le TSV, écriture :
n° | URL | Code | Encodage | Taille
→ transformées en :
<thead>
  <tr>
   <th>n°</th><th>URL</th><th>Code</th><th>Encodage</th><th>Taille</th>
  </tr>
</thead>
    4. Remplissage du corps (<tbody>).
Conversion manuelle de plusieurs lignes du TSV : chaque tabulation devient une cellule <td>…</td>, et chaque ligne devient un <tr>…</tr>.
Exemple :
1<TAB>https://fr.wikipedia.org/wiki/Robot<TAB>200<TAB>UTF-8<TAB>5681
→
<tr>
  <td>1</td><td>https://fr.wikipedia.org/wiki/Robot</td>
  <td>200</td><td>UTF-8</td><td>5681</td>
</tr>
(Procédé répété pour ~10 lignes.)
    5. Ouverture dans le navigateur (vérification visuelle).
    • Première tentative erronée avec un mauvais nom (tableau.tableau-fr.html) → échec.
    • Correction : ouverture avec le bon chemin ou via l’outil système :
xdg-open tableaux/tableau-fr.html
# ou
firefox tableaux/tableau-fr.html
→ Le tableau s’affiche correctement (entête grisée, bordures, 5 colonnes, 10 lignes).



## projet final ##
# J1- 25/12/2025 #

Dans le cadre du projet final du cours de Projet encadré (PPE), j’ai travaillé sur l’étude du mot culture en espagnol, à travers sa forme lexicale cultura. L’objectif était de constituer un corpus web représentatif permettant d’analyser les différents usages et sens de ce terme dans des contextes réels.

Dans un premier temps, j’ai rejoint le dépôt GitHub commun du projet et mis en place un workflow de travail collaboratif. J’ai travaillé sur une branche dédiée, intitulée espagnol-cultura, afin de ne pas interférer avec le travail des autres membres du groupe. Cette organisation permet de garantir la traçabilité des modifications et d’intégrer le travail progressivement via des pull requests.

J’ai ensuite constitué un corpus de 50 URLs en espagnol, stocké dans le fichier urls/corpus_es.txt. Les URLs ont été sélectionnées manuellement afin de garantir la qualité linguistique et thématique du corpus. J’ai privilégié des pages textuelles en espagnol issues de sources variées, principalement de la presse (rubriques culturelles de journaux espagnols), mais aussi de sites institutionnels et de plateformes de vulgarisation. La sélection des pages s’est appuyée sur différents sens du mot cultura, notamment le sens artistique et institutionnel (arts, littérature, cinéma), le sens anthropologique et social (identité, traditions, diversité culturelle), le sens éducatif (savoir, formation), ainsi que, de manière plus marginale, le sens agricole lié à l’étymologie du terme. 
Pour garantir la cohérence linguistique du corpus, seules des pages en espagnol ont été retenues, en excluant les fichiers PDF, les pages trop courtes, les contenus multimédias et les résultats de recherche.

Une fois le corpus finalisé, le fichier corpus_es.txt a été ajouté au dépôt via un commit explicite et poussé sur la branche dédiée. Une pull request a ensuite été créée afin de proposer l’intégration de ce corpus dans la branche principale du projet. À ce stade, le travail effectué constitue la base nécessaire à la suite du projet, qui consistera à développer un script de traitement automatique des pages web (récupération des pages, gestion de l’encodage, extraction du texte et des contextes autour du mot cultura).

# J2- 27/12/2025 #

Depuis la dernière entrée du journal, le travail a progressé au niveau collectif. nous avons commencé à développer un script commun dans le dossier programmes/, destiné à être utilisé pour l’ensemble des langues du projet. Ce script prend en entrée un fichier d’URLs, vérifie sa validité, puis parcourt les pages web afin de récupérer différentes informations techniques (code HTTP, encodage), d’extraire le contenu textuel et de compter les occurrences du mot étudié. Il est conçu comme un pipeline générique, indépendant de la langue, en vue de produire des données exploitables pour les tableaux et l’analyse finale.

À ce stade, chaque membre du groupe travaille principalement sur sa partie (constitution du corpus et tests), tandis que le script commun est développé et affiné progressivement. Pour ma part, mon corpus espagnol (cultura) a été intégré au dépôt, et la prochaine étape consistera à tester ce script commun sur ce corpus afin d’en évaluer le fonctionnement et les limites pour l’espagnol, sans modifier le code existant dans un premier temps.

Afin de faciliter le travail collectif et d’éviter la multiplication de branches temporaires, la branche dédiée à la constitution du corpus espagnol a été supprimée une fois le travail intégré et stabilisé. Le projet se poursuit désormais sur la branche principale (main), ce qui permet à l’ensemble des membres du groupe de travailler sur une base commune et à jour avant les phases de test et de validation du script commun.

la premiere version du script commun a pu être exécuté avec succès sur le corpus espagnol. Les pages sont correctement lues et traitées (code HTTP, encodage).
En revanche, aucune occurrence du mot cible n’est détectée à ce stade, ce qui s’explique par le fait que le mot recherché dans le script est actuellement paramétré pour une autre langue (français "culture"). Ce test a permis d’identifier la nécessité de rendre le mot cible paramétrable afin d’adapter le script aux différentes langues du projet.

# J3- 28/12/2025 # 

Dans la continuité de ce travail, j’ai poursuivi les tests du dépôt et des productions déjà générées afin de préparer les étapes d’analyse. Après avoir synchronisé le dépôt avec les dernières mises à jour effectuées par les autres membres du groupe (organisation des dossiers de sortie, tableaux, pages HTML et feuilles de style), j’ai pris en main les données textuelles produites par le script commun, notamment les fichiers de type dump textuel générés à partir des pages web.

À partir de ces fichiers, j’ai travaillé sur la mise en place d’une visualisation exploratoire sous la forme d’un nuage de mots pour l’espagnol (un premier essaye). L’objectif était de vérifier que les textes extraits à partir des URLs pouvaient être réutilisés pour une analyse lexicale simple, indépendante du script principal. Pour cela, j’ai regroupé les contenus textuels correspondant au corpus espagnol et utilisé un script Python dédié afin de générer une première visualisation du vocabulaire le plus fréquent.

Cette étape a permis de valider la chaîne complète allant de la constitution du corpus (URLs) à l’exploitation textuelle des données produites par le script commun. Le nuage de mots obtenu constitue un premier outil de comparaison possible entre les langues du projet, même s’il reste exploratoire à ce stade. Le script Python et l’image générée ont été ajoutés au dépôt afin de documenter cette étape et de permettre une reproduction ou une extension du travail pour les autres langues.

La suite du travail consistera à généraliser cette approche aux corpus français et anglais, puis à réfléchir à l’articulation entre ces visualisations lexicales et les tableaux quantitatifs produits par le script commun, en vue de l’analyse finale.

# J3- 29/12/2025 # 

Dans la continuité de cette première exploration, j’ai ensuite élargi ce travail aux autres langues du projet afin d’assurer une cohérence méthodologique entre les corpus. J’ai d’abord repris le script commun en collaboration avec les productions existantes du groupe afin de corriger certains problèmes bloquants observés lors des premières exécutions (notamment l’absence ou la non-création de certains dossiers de sortie). Ces ajustements ont permis de garantir la génération complète et systématique des fichiers attendus pour chaque URL : pages HTML aspirées, dumps textuels, fichiers de concordances et tableaux récapitulatifs par langue.

Une fois ces corrections effectuées, j’ai relancé le script commun sur l’ensemble des corpus (espagnol, anglais et français) afin d’obtenir des productions homogènes et comparables. Cette phase de relance a permis de vérifier la stabilité du script sur les trois langues, ainsi que la cohérence du nombre de fichiers générés par rapport au nombre d’URLs de chaque corpus. Les tableaux HTML correspondants ont été contrôlés via le site afin de valider le bon fonctionnement des liens internes (accès aux pages aspirées, dumps et concordances).

Sur cette base stabilisée, j’ai repris le travail sur les nuages de mots en adoptant une approche plus structurée. Le premier script exploratoire a été remplacé par un script Python unique et paramétrable, capable de générer un nuage de mots pour chaque langue à partir des dumps textuels correspondants. Ce choix a été fait afin d’éviter la duplication de scripts quasi identiques et de garantir une meilleure reproductibilité du traitement. Les dossiers dédiés aux scripts et aux images de sortie ont été créés explicitement dans le dépôt afin de clarifier l’organisation du projet.

Lors de cette étape, des problèmes d’encodage ont été identifiés pour le corpus français lors de la lecture des dumps textuels. Leur résolution a nécessité une gestion plus robuste de l’encodage dans le script Python, sans modifier les données sources produites par le script commun. Cette correction a permis de générer correctement les nuages de mots pour les trois langues, confirmant ainsi que les données textuelles extraites étaient exploitables de manière homogène.

À ce stade, l’ensemble de la chaîne de traitement — de la collecte des URLs à la visualisation lexicale — est fonctionnelle pour les trois langues du projet. Ce travail m’a permis d’intervenir à la fois sur la vérification et l’amélioration des scripts, l’organisation du dépôt, le contrôle du site HTML et l’exploitation des données textuelles produites collectivement. Les nuages de mots constituent désormais un complément exploratoire aux tableaux quantitatifs, ouvrant la voie à une analyse comparative plus fine entre les langues dans la phase finale du projet.

# J4 30/12/2025 #

Lors de cette phase du projet, un travail de synchronisation du dépôt Git a été nécessaire en raison de modifications parallèles effectuées par plusieurs membres du groupe. Des divergences sont apparues entre la version locale et la version distante du dépôt, notamment autour du script principal, ce qui a provoqué des conflits lors des opérations de pull et de push.

Afin de repartir sur une base stable, j’ai volontairement abandonné les modifications locales non nécessaires et réaligné mon dépôt sur la version distante validée par le groupe. Cette étape a permis de récupérer l’ensemble des avancées réalisées par mes camarades et d’assurer une cohérence du projet avant de poursuivre le travail. Elle a également permis de consolider ma compréhension du fonctionnement de Git en contexte collaboratif (gestion des conflits, synchronisation des branches et récupération d’une version distante stable).

Après avoir identifié un problème d’affichage sur le site (absence de la barre de navigation sur les pages de tableaux en anglais et en espagnol), j’ai vérifié le fonctionnement global du site afin de confirmer que l’erreur provenait bien des fichiers HTML et non du script de génération. J’ai ensuite comparé la structure des pages fonctionnelles avec celles posant problème, ce qui m’a permis d’identifier une incohérence dans l’en-tête des tableaux. J’ai corrigé manuellement les fichiers HTML concernés afin d’uniformiser l’en-tête et de rétablir la navigation sur l’ensemble des pages. Cette intervention a permis de restaurer une cohérence visuelle et fonctionnelle entre toutes les pages du site.

Dans la continuité du projet, j’ai testé le script de génération de nuages de mots sur le corpus espagnol à partir des fichiers de contextes produits par le script principal. Le nuage obtenu met logiquement en évidence le terme cultura, très fréquent dans les pages sélectionnées, ce qui confirme la cohérence du corpus et du filtrage effectué. La présence répétée de ce terme a été conservée volontairement, car elle reflète l’objet même du corpus et non une erreur de traitement. Cette étape a permis de valider le bon fonctionnement du script Python, l’organisation des dossiers (contextes / images) et la réutilisation des données textuelles pour une analyse lexicale exploratoire. Le nuage de mots en espagnol constitue ainsi un premier outil de comparaison avec les autres langues du projet.

Puis j'ai intégré les nuages de mots au site en créant une page dédiée dans le dossier nuages, accessible depuis la barre de navigation. Les images des nuages ont été générées automatiquement à partir des contextes linguistiques en français, espagnol et anglais, puis reliées correctement via des chemins relatifs. Un ajustement de la taille des images a été nécessaire pour améliorer la lisibilité et l’harmonie visuelle de la page.

# J5 02/01/2026 #

Aujourd’hui, j’ai vérifié le bon affichage des nuages de mots sur le site. J’ai ensuite testé l’exécution des scripts afin de m’assurer qu’ils fonctionnent correctement. Enfin, j’ai corrigé les problèmes d’affichage des tableaux, notamment la largeur excessive due aux URL longues, afin d’améliorer la lisibilité.

# J5 04/01/2026 # 

En phase finale, j’ai observé une divergence entre le nombre d’URLs présentes dans le fichier corpus_es.txt et le nombre d’entrées générées dans le tableau espagnol. Après relance du script et vérification des sorties intermédiaires (aspirations, dumps et contextes), il apparaît que certaines URLs n’aboutissent pas à une extraction exploitable (échec de requête HTTP, contenu vide ou non traité correctement), ce qui entraîne leur exclusion implicite du tableau. Ce comportement n’a pas été modifié afin de préserver le fonctionnement réel du pipeline et de rendre visibles les limites du traitement automatique de données web. Cette vérification finale a permis de valider la robustesse globale du script et la cohérence des données affichées sur le site.

Ce travail de projet m’a permis de suivre l’ensemble de la chaîne de traitement, depuis la constitution manuelle d’un corpus d’URLs jusqu’à l’exploitation et la visualisation des données textuelles produites automatiquement. En travaillant sur le corpus espagnol, j’ai pu tester concrètement la robustesse des scripts, identifier les limites liées à l’extraction web (URLs inaccessibles, contenus non exploitables) et ajuster les sorties sans modifier la logique globale du pipeline. L’intégration des tableaux, des contextes, des concordances et des nuages de mots au site final m’a également permis de relier traitement automatique et restitution des résultats. Ce projet a ainsi constitué une première mise en pratique cohérente des méthodes vues en cours, tout en soulignant les enjeux techniques réels du TAL appliqué à des données hétérogènes du web.



