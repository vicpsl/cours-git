Les branches
============

## Slide 1

Les branches permettent d'avoir des états parallèles d'un même dépôt, une sorte de "sauvegarder sous" sur l'ensemble d'un dossier et de ses sous-dossiers. La différence, c'est qu'il existe tout un système pour fusionner ces versions entre elles.

Ces "sauvegarder sous" sont utiles, car ils permettent de travailler simultanément sur des problèmes différents. Prenons par exemple une situation simple (dessin au tableau): 

1. j'ai une application web qui traite des données, 
2. deux collègues
3. on doit pour la semaine prochaine corriger deux problèmes distincts : 
    a. un problème de performance dans la communication avec la base de données, 
    b. le redesign des menus.
4. les deux collègues pourraient travailler sur les mêmes dossiers, mais séparer leur travail permettra de conserver :
    1. une forme de linéarité
    2. éviter des conflits entre leurs modifications durant leur travail
    3. ajoutera par exemple la capacité de changer, pour déboguer, l'affichage pour l'un, les données reçues pour l'autre.

Généralement, la branche principale s'appelle la branche *master*. Les autres branches ont des noms libres. Cependant, il arrive souvent de retrouver les branches suivantes : 
    - *dev* pour une version de développement qui diffère d'une version stable en master (on ne fournira sur la master que des corrections de bug tandis que l'oncontinuera à travailler à l'ajout de nouvelles fonctionnalités sur la *dev* pour la prochaine grande version)
    - *docs*, *doc* pour la documentation quand cela s'avère nécessaire.

On recommande généralement de faire une branche = une tache (soit un bug, une nouvelle fonctionnalité, etc.)

## Slide 2

```bash
# Créer un dossier exercice_cours2 (navigateur ou mkdir exercice_cours2 dans un terminal)
# Ouvrir ce dossier dans le terminal (cd exercice_cours2)
git init
# Créer un fichier pour initialiser l'historique du dépôt :
touch master.md #(ou `> master.md` ou `cat master.md` si vous n'avez pas la commande touch)
git add master.md
git commit -m "Ajout du doc master.md pour le premier commit"
git log
# 1 commit est listé avec :
# son numéro, votre user/mail, la date
# et le message que vous avez assigné ci-dessus, ici "Ajout du doc master.md pour le premier commit"  
# Créer une branche cheat_sheet
git checkout -b cheat_sheet
# Télécharger https://training.github.com/downloads/fr/github-git-cheat-sheet.pdf :
# directement dans le dépôt avec wget https://training.github.com/downloads/fr/github-git-cheat-sheet.pdf
# ou le copier dans le dépôt
git status
git add github-git-cheat-sheet.pdf
git commit -m "Ajout de la cheatsheet de github"
git status
git log
# 2 commits sont listés avec :
# leurs numéros, votre user/mail, les dates
# et les messages que vous avez assignés dans cet historique, ici :
# "Ajout du doc master.md pour le premier commit" et "Ajout de la cheatsheet de github"
git checkout master
# Regarder le dossier (ls -la) :
# dans la branche master, seul master.md est présent mais pas github-git-cheat-sheet.pdf
git status
git log
# dans la branche master, seul le premier commit est visible
# Créer une branche dev
git checkout -b dev
# Créer un fichier cours2.md contenant l'adresse que l'on a utilisé pour le téléchargement
nano cours2.md
# puis coller/taper l'adresse URL https://training.github.com/downloads/fr/github-git-cheat-sheet.pdf
# enregistrer / fermer nano (ctrl+X puis Oui/Yes) 
# Vous pouvez également utiliser les commandes suivantes, si elles sont disponibles :
# gedit cours2.md (ouvre l'éditeur texte par défaut) puis enregistrer le document (save).
# touch cours2.md #(ou `> cours2.md` ou `cat cours2.md`)
git diff # rien ne se produit : les changements n'ont pas encore été ajoutés "git add"
git status
git add cours2.md
git commit -m "Ajout de l'adresse d'origine du document aux notes du cours"
git log
# 2 commits sont listés avec :
# leurs numéros, votre user/mail, les dates
# et les messages que vous avez dans cet historique, ici :
# "Ajout du doc master.md pour le premier commit", car vous disposez de l'historique de la branche master au départ et
# "Ajout de l'adresse d'origine du document aux notes du cours", qui correspond à l'historique de votre branch dev (issue de master)

# Modifier le fichier cours2.md en remplaçant son contenu :
nano cours2.md # remplacer l'URL pas "je supprime l'url", enregistrer / fermer nano (ctrl+X puis Oui/Yes)
git diff # cette fois un changement de contenu est repéré : 
#diff --git a/cours2.md b/cours2.md (les fichiers qui ont été modifiés)
#index 37fce7e..72faed7 100644 (index des modifications)
#--- a/cours2.md (type de modifications)
#+++ b/cours2.md
#@@ -1 +1 @@ (une suppression "-", un ajout "+")
#-https://training.github.com/downloads/fr/github-git-cheat-sheet.pdf (ce qui a été supprimé : signe "-" devant)
#+je supprime l'url  (ce qui a été ajouté : signe "+" devant)
git status
git add cours2.md
git commit -m "Suppression de l'adresse d'origine du document aux notes du cours"
git log
# 3 commits sont listés avec leurs numéros, votre user/mail, les dates :
# les messages que vous avez dans cet historique, ici :
# "Ajout du doc master.md pour le premier commit", car vous disposez de l'historique de la branche master au départ et
# "Ajout de l'adresse d'origine du document aux notes du cours", qui correspond à l'historique de votre branch dev (issue de master)
# "Suppression de l'adresse d'origine du document aux notes du cours", dernier changement de la branche dev
git checkout master
# Regarder le dossier ls -la (pas de cours2.md)
git log
git merge dev
# Regarder le dossier ls -la (cours2.md présent)
git log
# Copier le numéro du premier commit de master ("Ajout du doc master.md pour le premier commit")
git reset [numéro du premier commit] --hard
# Regarder le dossier ls -la (pas de cours2.md)
git log
# ne contient que le commit de départ "Ajout du doc master.md pour le premier commit"
```

## Slide 4

```bash
git status # Être sur d'être sur master
# Télécharger https://raw.githubusercontent.com/vicpsl/cours-git/master/cours-2/exemple.xml
# navigateur ou wget https://raw.githubusercontent.com/vicpsl/cours-git/master/cours-2/exemple.xml
git add exemple.xml
git commit -m "Ajout d'un fichier TEI"
git checkout -b changement_texte
gedit exemple.xml # Changer Titre et Auteur par "Titre sur changement_texte" et "Auteur sur changement_texte"
git add exemple.xml
git commit -m "Modif fichier TEI"
git log
git status

```

## Slide 5

```bash
git checkout master
git log 
git status
gedit exemple.xml # Changer Titre et Auteur par "Titre sur Master" et "Auteur sur Master"
git add exemple.xml
git commit -m "Modif fichier TEI sur master"
git merge changement_texte
#Fusion automatique de exemple.xml
#CONFLIT (contenu) : Conflit de fusion dans exemple.xml
#La fusion automatique a échoué ; réglez les conflits et validez le résultat.
git log
git status
```

```bash
gedit exemple.xml :
# Vous obtenez un fichier tel que :

<TEI xmlns="http://www.tei-c.org/ns/1.0">
  <teiHeader>
      <fileDesc>
         <titleStmt>
<<<<<<< HEAD
            <title>Titre sur Master</title>
            <author>Auteur sur Master</title>
=======
            <title>Titre sur changement_texte</title>
            <author>Auteur sur changement_texte</title>
>>>>>>> changement_texte

# Changer Titre et Auteur par "Titre Final" et "Auteur Final" et supprimer les codes de conflit :
<TEI xmlns="http://www.tei-c.org/ns/1.0">
  <teiHeader>
      <fileDesc>
         <titleStmt>
            <title>Titre Final</title>
            <author>Auteur Final</title>
            <title>Titre sur changement_texte</title>
            <author>Auteur sur changement_texte</title>
         </titleStmt>
# Sauvegarder

git add exemple.xml
git commit -m "Résolution d'un conflit avec une version corrigée"
git status
git log
```