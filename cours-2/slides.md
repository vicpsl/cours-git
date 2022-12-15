---
marp: true
---


# 1. Les branches

- Les branches sont comme des "Sauvegarder sous..." pour l'ensemble du dépôt
    - Sauf qu'on peut les rejoindre/fusionner plus facilement !
- La branche par défaut s'appelle master
    - Dans `git status`, la branche `master` doit être affichée dans votre dossier de notes
- Offre la possibilité de travailler sur différents problèmes en parallèle. Possibilité de travailler sur des problèmes différents en même temps et de changer de tâche rapidement.
    - Une branche Master
    - Une branche bug 1
    - Une branche bug 2 parce que celui-ci est plus pressé
    - etc...

---

# 2. Les branches : vocabulaire et commandes

- **Créer une branche** : `git branch [nom de la branche]`
- **Se déplacer dans une branche** : `git checkout [nom de la branche]`
- **Se déplacer et créer une branche en même temps** : `git checkout -b [nom de la branche]`
- **Fusionner une branche** : `git merge [branche dont on veut les modifications]` (on fusionne toujours depuis la branche réceptrice, celle sur laquelle on veut continuer de travailler ensuite)

---

# 3. Branches

![](images/branches.png)

---

# 4. Conflits d'historique

1. Copier le fichier xml  [https://github.com/vicpsl/cours-git/blob/master/cours-2/exemple.xml](https://github.com/vicpsl/cours-git/blob/master/cours-2/exemple.xml)
2. Enregistrer ce changement dans git
3. Changer de branche pour `changement_texte`
4. Remplir titre et auteur avec le titre de votre livre préféré et auteur préféré
5. Ajouter une description dans le document TEI
2. Enregistrer ce changement dans git

---

# 5.  Conflits d'historique : le professeur change d'avis 

1. Changer de branche pour `master`
2. Changer le titre et l'auteur pour "Epigrammes" et "Martial"
3. Enregistrer le changement
4. Fusionner avec la branche changement_texte  
Alors ?
5. Résolution d'un conflit (simple) :
   1. Ouvrir le fichier (exemple.xml)
    ~~~
    <TEI xmlns="http://www.tei-c.org/ns/1.0">
      <teiHeader>
          <fileDesc>
             <titleStmt>
    <<<<<<< HEAD
                <title>Epigrammes</title>
                <author>Martial</title>
    =======
                <title>Tom</title>
                <author>Riddle</title>
    >>>>>>> changement_texte
             </titleStmt>
   ...
    ~~~
   Comme vous pouvez le voir, Git a ajouté une syntaxe comprenant sept caractères "inférieurs à" (<<<<<<<) et sept caractères "supérieurs à" (>>>>>>>), séparés par sept signes égal, =======.  
Ceux-ci peuvent être recherchés à l'aide de votre éditeur pour trouver rapidement où les modifications doivent être apportées.  
<br/>
Il y a deux sections dans ce bloc :  
* Les caractères <<<<<<< indiquent les modifications de la branche actuelle (dans ce cas, "HEAD", qui est un autre mot pour votre branche actuelle, dans notre cas "master"), et les signes ======= indiquent la fin de la première section.  
* La deuxième section est celle où les modifications proviennent de la tentative de fusion, ici "changement_texte": il commence après les signes égal et se termine par les signes >>>>>>>.  
<br/>
   2. Editer le fichier en ne conservant que le contenu final souhaité, par exemple :
    ~~~
    <TEI xmlns="http://www.tei-c.org/ns/1.0">
      <teiHeader>
          <fileDesc>
             <titleStmt>
                <title>Tom</title>
                <author>Riddle</title>
             </titleStmt>
   ...
    ~~~
   3. Enregistrer le changement (git add puis git commit -m "résolution du conflit fichier TEI")
   4. Vérifier le résultat
