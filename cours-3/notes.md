# Slide 1

Avec les branches, nous avons vu la capacité de travailler sur des versions alternatives à notre version principale, des sortes d'"*enregistrer sous*". Si l'on compare ce que l'on a vu avec les capacités d'un Dropbox ou d'un Google Drive, quelle fonctionnalité est manquante ?

# Slide 2

Heureusement, des entreprises et des structures publiques fournissent des services de ce type. Git peut être utilisé avec des serveurs distants. Il s'agit ensuite de trouver la version qui vous convient, avec les outils qui l'accompagnent. On distingue deux grands concurrents : Github et Gitlab. L'avantage de Gitlab sur github est le caractère en partie OpenSource du logiciel qui le fait tourner (cela veut donc dire qu'on peut l'installer et donc répliquer l'infrastructure sur son propre serveur). L'avantage de Github sur Gitlab est son adoption par les développeur-ses.

# Slide 3

Faire un dessin permettant de faire comprendre

- *remote* : Serveur distant permettant la synchronisation manuelle de votre dépôt
- *origin* : Nom du serveur principal, un peu comme master est la branche principale. Pour l'instant, nos dépôts n'en ont pas
- *push* : Envoyez les modifications effectuées sur un serveur donné.
- *pull* : Retrouvez les informations depuis un serveur donné
- *clone* : Copie sur votre PC d'un dépôt trouvé en ligne
- *fork* : Dérivé d'un dépôt d'un-e autre développeur-se
- *upstream* : Par convention, nom d'un second serveur, généralement le serveur source du *fork*

# Slide 6

```bash
# Après avoir créé un dépôt Github "notes-de-cours"
# Créer le dépôt local qui alimentera le nouveau dépôt Github "notes-de-cours"
mkdir notes-de-cours
cd notes-de-cours/
git init
# Créer un fichier pour initialiser l'historique du dépôt, par exemple un README:
echo "# notes-de-cours" >> README.md
git add README.md
git commit -m "Premier commit"
# Contrôles possibles avec : 
# git status
# git log
# Créer le lien vers le dépôt Github :
git remote add origin https://github.com/vicpsl/notes-de-cours.git
# Push les données du dépôt local vers Github :
git push -u origin master
# Entrez vos identifiants Github (user & key)
# Contrôles possibles avec : 
git remote -v
git branch -a
```

# Slide 7

- Cloner le repository de cours
- Essayer de faire une modification
- La commit
- La push
- Est-ce que cela marche ? (Note : pour moi, cela marche, pour eux, non)