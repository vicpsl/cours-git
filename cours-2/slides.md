% Les branches

---
marp: true
---


# 1. Les branches

- Les branches sont comme des "Sauvegarder sous..." pour l'ensemble du dépôt
    - Sauf qu'on peut les joindre/fusionner plus facilement !
- La branche par défaut s'appelle master (ou main)

- Les branches offrent la possibilité de travailler sur différents problèmes en parallèle :
    - Une branche principale master
    - Une branche bug 1
    - Une branche bug 2 parce que celui-ci est plus pressé
    - etc...

---

# 2. Les branches : vocabulaire et commandes

- **Créer une branche** : `git branch [nom de la branche]`
- **Se déplacer dans une branche** : `git checkout [nom de la branche]`
- **Créer et se déplacer sur une nouvelle branche en même temps** : `git checkout -b [nom de la branche]`
- **Fusionner une branche** : `git merge [branche dont on veut les modifications]` (on fusionne toujours depuis la branche réceptrice, celle sur laquelle on veut continuer de travailler ensuite)

## Exercices :
Tout au long de ces exercices, vérifier et observer les résultats des commandes git status, git log et git diff (le cas échéant).
- Créer un dossier exercice_cours2
- Initialiser ce dossier en dépôt Git
- Enregistrer un premier fichier master.md
- Créer une branche cheat_sheet dans laquelle sera enregistré le fichier https://training.github.com/downloads/fr/github-git-cheat-sheet.pdf


- Créer une branche dev dans laquelle sera créé un fichier texte cours2.md contenant l'URL ci-dessus
- Modifier ce fichier cours2.md en remplaçant l'URL par un texte de votre choix
- Enregistrer ce changement


- De retour sur la branche principale (master ou main) :
- Fusionner la branche dev pour intégrer cours2.md à la branche principale
- Annuler la fusion (tip : git reset [n° commit] --hard)

Des corrections pas à pas sont disponibles dans les [notes de ce cours](https://github.com/vicpsl/cours-git/blob/master/cours-2/notes.md).

---

# 3. Branches

![](images/branches.png)

---

# 4. Conflits d'historique

1. Copier le fichier xml [https://raw.githubusercontent.com/vicpsl/cours-git/master/cours-2/exemple.xml](https://raw.githubusercontent.com/vicpsl/cours-git/master/cours-2/exemple.xml)
2. Enregistrer ce changement dans git
3. Changer de branche pour `changement_texte`
4. Remplir Titre et Auteur avec le titre de votre livre préféré et auteur préféré 
5. Enregistrer ce changement dans git

---

# 5. Conflits d'historique : le professeur change d'avis 

1. Changer de branche pour `master`
2. Changer le titre et l'auteur pour "Epigrammes" et "Martial"
3. Enregistrer le changement de cette branche `master`
4. Fusionner la branche changement_texte  
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
   3. Enregistrer le changement (git add exemple.xml puis git commit -m "résolution du conflit fichier TEI")
   4. Vérifier le résultat

Des corrections pas à pas sont disponibles dans les [notes de ce cours](https://github.com/vicpsl/cours-git/blob/master/cours-2/notes.md).