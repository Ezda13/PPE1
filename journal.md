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




