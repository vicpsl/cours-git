% Devoir Github : collaboration autour de la création de vérité terrain


# 1. Philologie computationnelle

### Approche tournée vers les données. Deux volets :
1. Produire des données / “ecdotique numérique” :
- acquisition du texte(HTR,...)
- structuration (XML,...)
- enrichissement (lemmatisation,annotation linguistique,paléographique...)

2. Analyser les données :
- analyse statistique (stylométrie, scriptométrie)
- stemmatologie
- modélisation


 

<hr style="border:2px solid gray">

# 2. Collaboration autour de la création de vérité terrain

### Acquisition du texte :

Objectif : contribuer à un modèle pour les incunables, manuscrits et premiers imprimés 15e-16e de romans français

Dans la constitution d’un corpus de textes, la première phase est bien sûr l’acquisition du contenu des textes envisagés.

### Comment ? En combinant deux techniques
Transcription des témoins, selon les critères scientifiques du projet (transcriptions allographétiques, graphématiques, normalisées ; édition critique ; etc.).

“Transcription” assistée par ordinateur en utilisant un algorithme permettant la reconnaissance optique de caractères (*optical character recognition* ou **ocr**) imprimés, ou la reconnaissance des écritures manuscrites (*handwritten text recognition* ou **HTR**).

Consignes de transcription : https://hal.archives-ouvertes.fr/hal-03697382/

### Principe de base du HTR :
Prédiction d’un contenu texte : 
- à partir d’une image de la source
- -par une intelligence artificielle
- entraînée par un humain
- dans un processus alternant
  - phases d’intervention humaines
  - phases de calcul.

Collaboration active entre humain et machine.


 

<hr style="border:2px solid gray">

# 3. La transcription

Que doit--on représenter :

- le “contenu” textuel ?
- le “contenu” textuel normalisé ?
- des graphèmes ? (Lettre ou groupe de lettres transcrivant un phonème)
- un système graphique / allographique (Graphie alternative d'une lettre ou d'un mot)
- une ponctuation et une segmentation modernisée ou non

Choix de transcription : 

1. Coller à la source ? (conserver les abréviations, la segmentation, la ponctuation...)  
**Plus simple pour la reconnaissance**

2. Se rapprocher d’un résultat normalisé ? (Transcrire en résolvant les abréviations, etc.)  
**Besoin de plus de données pour des résultats** (mais, cf. projet Himanis).

3. Concevoir une chaîne intégrant les deux?


 

<hr style="border:2px solid gray">

# 4. Une Issue = Une Branche = Une Pull Request

- Ne jamais, surtout jamais fusionner ses propres PR en équipe
- Ne pas merge avant que l'intégration continue ait terminé

 

<hr style="border:2px solid gray">

# 5. Une fonction = (> 1) test 


 

<hr style="border:2px solid gray">

# 6. Ne pas développer ce qui existe déjà

- Sauf si l'outil fait 150 MO à la place des 10ko que vous avez en tête

 

<hr style="border:2px solid gray">

# 7. Améliorer, contribuer 

![](images/Strip-Vision-Open-source-650-final1.jpg)

 

<hr style="border:2px solid gray">

# 8. Penser à votre moi du futur

- Ille sera tout autant en colère que vos collègues


 

<hr style="border:2px solid gray">

# 9. Mettez-vous d'accord sur des bonnes pratiques


 

<hr style="border:2px solid gray">

# 10 Indenter

![](images/code_quality_2.png)

 

<hr style="border:2px solid gray">

# 11. Documenter.


 

<hr style="border:2px solid gray">

# 12. Documenter.

![](images/Strip-Commentaires-davant-vacances-650-final-2.jpg)

 

<hr style="border:2px solid gray">

# Liens


[Hive Best Practices https://github.com/wearehive/project-guidelines](https://github.com/wearehive/project-guidelines) pour Git

[https://code.tutsplus.com/tutorials/top-15-best-practices-for-writing-super-readable-code--net-8118](https://code.tutsplus.com/tutorials/top-15-best-practices-for-writing-super-readable-code--net-8118) pour le php

 

<hr style="border:2px solid gray">