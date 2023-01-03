
# 1. Ce qu'il manque jusque là

- Capacité de sauvegarde distance : dois-je faire une copie dans ma dropbox ?
- Capacité de travailler en équipe : dois-je faire un git dans ma dropbox et partager le dossier ?
- etc.

---

# 2. Git et ses services en ligne

Des entreprises et des structures du public fournissent des serveurs centralisés pour git :

- [Github](https://github.com) qui est le plus à la mode et que nous utiliserons
- [Gitlab](https://gitlab.com) qui est le concurrent le plus sérieux de github aujourd'hui
- [Bitbucket](https://bitbucket.org)

---

# 3. Un dessin vaut mieux qu'une explication

![](images/push-pull.png)

---

# 4. Le vocabulaire des serveurs distants pour Git

- *remote* : Serveur distant permettant la synchronisation manuelle de votre dépôt
- *origin* : Nom du serveur principal, un peu comme master est la branche principale. Pour l'instant, nos serveurs n'en ont pas
- *push* : Envoyez les modifications effectuées sur un serveur donné.
- *pull* : Retrouvez les informations depuis un serveur donné
- *clone* : Copie sur votre PC d'un dépôt trouvé en ligne
- *fork* : Dérivé d'un dépôt d'un-e autre développeur-se
- *upstream* : Par convention, nom d'un second serveur, généralement le serveur source du *fork*

---

# 5. Créons un compte Github 

- Github a des défauts (pas open source par exemple) mais reste l'outil le plus moderne pour de la gestion de code versionné en équipe
- Github propose un environnement complet
	- Gestion d'équipe
	- Connexions à d'autres applications
	- Gestion de ticket
	- Gestion de fusion de branches
	- etc.

---

# 6. Créons un dépôt Github à partir d'un dépôt local

Documentation Github en ligne https://docs.github.com/en/get-started et https://docs.github.com/fr/get-started en Français.

1. Sur Github, créer un repo "notes-de-cours" (qui recevra notre dépôt local)
	- **/!\\ Surtout ne pas cocher initialiser le repository**
		- Pourquoi ?
2. Créer et initialiser un dépôt local "notes-de-cours" correspondant  
*En général un dossier/dépôt local avec du code existe déjà*
3. Ajouter le serveur Github à votre dépôt local
	- `git remote add origin [adresse du serveur distant GitHub]`
4. Pour le premier push de synchronisation
	- `git push -u origin master`
		- envoie (*push*) ma branche actuelle (*master* ou main) sur la branche *master* (ou main) du serveur Github, par convention *origin*. Cette branche correspondra à partir de maintenant à celle sur mon dépôt local
        - "-u:" le flag *-u* signifie "upstream", équivalent à '-set-upstream'
	- `git push` sera suffisant (pour la branche master !) à partir de maintenant.
    - Toute *nouvelle_branche* locale nécessitera `git push -u origin nouvelle_branche`

---

# 7. Cloner un repository

Un dépôt Git en ligne est peu ou prou la même chose qu'un dépôt local sauf que vous ne pouvez pas commit directement dessus. Il s'agit de l'archive ".git" de votre dépôt avec la capacité de se connecter et de synchroniser ces informations. 

Tous les dépôts Git ne sont **pas disponible en écriture**. Il se peut qu'un repository Git/Github distant soit protégé pour n'être modifié que par un groupe de personnes.

Cependant, cela n'empêche pas de les **cloner** et de travailler dessus localement. Vous ne pourrez juste pas modifier le Git distant (remote) si vous n'avez pas accès en écriture.

> [https://github.com/vicpsl/cours-git](https://github.com/vicpsl/cours-git)

![URL source du dépôt à cloner](images/cloneURL.png)

Dans le terminal du dossier d'accueil du dépôt :  
`git clone https://github.com/vicpsl/cours-git.git`

---

# 8. Commandes utiles

- `git remote -v` : répertorie vos connexions distantes avec d'autres dépôts, incluant leurs URLs
- `git remote show origin` ou `git remote show upstream` : sortie détaillée d'un dépôt distant, dont la liste des branches associées au dépôt distant et celles en local liées pour les pull et les push
- `git branch -r` : listes toutes les branches du dépôt distant
- `git branch -a` : lister toutes les branches
- `git pull` : mettre à jour immédiatement *la branche courante* du dépôt local (combinaison de git fetch et git merge)
- `git pull --all` : **/!\\** mettre à jour immédiatement *toutes les branches liées* du dépôt local
- `git push -u origin master` (voir 6) : **premier** push de synchronisation d'une branche locale vers le dépôt distant
- `git push` (voir 6) : push de synchronisation d'une branche locale vers le dépôt distant


---


# 9. Bonnes pratiques...

... quand on travaille avec plusieurs postes avec un dépôt distant

- Toujours faire un `git status` en se connectant sur son dossier ou une vérification du status des branches adéquates
- Suivi d'un `git pull` si vous/un collègue avez travaillé dessus depuis un autre poste ou depuis votre PC
- Essayez le plus possible de ne pas travailler dans la branche **master** mais dans des branches focalisées sur un objectif dès que votre projet commence à grossir
