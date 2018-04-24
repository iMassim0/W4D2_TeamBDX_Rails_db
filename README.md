# Week n°4 on Day n°2 - THP by Team BDX - Ruby On Rails - DataBase alias PLS

## Projet du jour :

Le projet du jour consiste à introduire Rails par la notion de modèles, associations via les databases. Après une compréhension intense de requêtes SQL hier, ces exercices ont aujourd'hui pour but de transposer le concept vu hier, mais en utilisant "Active Record" en lien avec Ruby On Rails (RoR). Les exercices permettent de nous faire créer via les commandes et la console de RoR les éléments nécessaires pour effectuer des créations/consultations/modifications/suppressions de données; autrement dit et en anglais : le CRUD (Create / Read / Update / Delete)! Cet exercice a permis également à pratiquer un concept plus ou moins flou : la PLS, ou autrement dit le "J'en chie comme un russe".

## Pré-requis et installation :

1 - Veuillez svp vous relever de votre PLS.

2 - Veuillez cloner ce repo sur votre machine avec la commande suivante (le dossier créé s'appelera "W4D2_TeamBDX_Rails_db") :

```
  $ git clone https://github.com/iMassim0/W4D2_TeamBDX_Rails_db
```

3 - Se rendre dans le dossier souhaité, et ne pas oublier d'effectuer la commande suivante au cas ou :

```
  $ bundle install
```

4 - Pour chaque correction, il sera nécessaire de lancer la commande rails pour rentrer des lignes de commandes, telle que :

```
  $ rails c
```

## Fonctionnement des exercices :

### Fonctionnement de l'exercice 1:

### Fonctionnement de l'exercice 2:

### Fonctionnement de l'exercice 3:

Cet exercice est décomposé en 4 parties. Le but est de créer 4formats de base de données qui permettent le traitement de ces dernières selon des modes définis. Voici les fonctionnements décrits :

  * MOOCademy : Il est demandé que deux classes puissent gérer des Cours et des Leçons. Pour chaque cours, des leçons sont rattachées. La structure est donc telle que :
    - Class Course | name, description
    - Class Lesson | title, body, course_id

  * The Hacking Pinterest : Il est demandé que des utilisateurs puissent créer des pins, et que des commentaires peuvent être envoyés sur les pins. La structure est donc telle que :
    - Class User | name
    - Class Pin | url, user_id
    - Class Post | content, user_id, pin_id

  * The Hacking News : Il est demandé que des utilisateurs puissent poster des liens. Ces derniers doivent pouvoir également commenter ces liens, mais également commenter les commentaires. La structure est donc telle que :
    - Class User | name
    - Class Post | url, content, user_id
    - Class Comment | content, user_id, post_id
    - Class Comment_to_c | content, user_id, comment_id

  * The Hacking Class : Il est demandé de créer un site d'éducation qui recense des éleves, et qui hébèrgent des cours. Les élèves ne peuvent s'inscrire qu'a un seul cours. La structure est donc telle que :
    - Class User | name, course_id
    - Class Course | title, description, content

  PS : Les colonnes id/created_at/updated_at créés automatiquement par Rails ont été volontairement omis.

  PS2 : Les classes ont été créées avec la commande suivante :


## Conditions de test des exercices pour les corrections

**Pour faciliter la correction des exercices précédents voici les éléments à tester dans la console rails, si vous le souhaitez. Le but est de créer des instances de classes, et des liaisons entre celles-ci pour observer le bon fonctionnement des programmes. Les commandes sont respectivement :**

### Exercice 1 :

### Exercice 2 :

### Exercice 3 :



## Contributeurs

@bab - Baptiste ROGEON

@massimo - Maxime FLEURY

<p align="center">
  <img src="THP_BDX.png"/>
</p>
