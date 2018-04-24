# Week n°4 on Day n°2 - THP by Team BDX - Ruby On Rails - DataBase alias PLS

## Projet du jour :

Le projet du jour consiste à introduire Rails par la notion de modèles, associations via les databases. Après une compréhension intense de requêtes SQL hier, ces exercices ont aujourd'hui pour but de transposer le concept vu hier, mais en utilisant "Active Record" en lien avec Ruby On Rails (RoR). Les exercices permettent de nous faire créer via les commandes et la console de RoR les éléments nécessaires pour effectuer des créations/consultations/modifications/suppressions de données; autrement dit et en anglais : le CRUD (Create / Read / Update / Delete)! Cet exercice a permis également à pratiquer un concept plus ou moins flou : la PLS, ou autrement dit le "J'en chie comme un russe".

## Pré-requis et installation :

1 - Veuillez svp vous relever de votre PLS.

2 - Veuillez cloner ce repo sur votre machine avec la commande suivante (le dossier créé s'appelera "W4D2_TeamBDX_Rails_db") :

```
  $ git clone https://github.com/iMassim0/W4D2_TeamBDX_Rails_db
```

3 - Se rendre dans le dossier souhaité, et effectuer ces 2 commandes suivantes pour initialiser le fonctionnement :

```
  $ bundle install && rails db:migrate
```

4 - Pour chaque correction, il sera nécessaire de lancer la commande rails pour rentrer des lignes de commandes, telle que :

```
  $ rails c
```

## Fonctionnement des exercices :

### Blog_startup / db & app :

Cet exercice était le tour de chauffe de la découverte des bases de données et de RoR. Si le cours qui est maintenant présent sur la plateforme avait été présent ce matin, beaucoup moins de sueur aurait été versée ... :D.

Le but est de créer plusieurs classes, et laisions telles que :

  - Class User | name
  - Class Post | title, body, description, user_id, category_id
  - Class Category | name

Le principe est qu'un "User" peut créer un "Post", qui est tagué par des éléments "Category". Plusieurs "categories" peuvent être recensées dans un "post". Plusieurs "posts" peuvent être rédigés par un "user".

Le but ici est d'utiliser les commandes suivantes :

Création d'une nouvelle classe :
```
  $ rails g model Class att:type
```

Création d'une nouvelle liaison :
```
  $ rails g migration add_first_to_secondS first:references
```

Ne pas oublier de placer dans les fichiers .rb issus de /app :
```
  has_one :att //    has_many :att      // belongs_to :att
                            VS
  1 dependance // plusieurs dépendances // dépendant de
```

Et avec ça, la PLS se fait en douceur ...

### Blog_startup / seed :

Le but de l'exercice ici est d'utiliser la commande suivante :
```
  $ rails db:seed
```
Celle-ci permet de pouvoir executer les actions renseignées dans le fichier seeds.rb, à l'intérieur du dossier db. Elle permet, une fois renseignée par les lignes de commande nécessaires de pouvoir importer les données souhaités dans la base de données locale. En l'occurrence, la base de donnée utilisée ici est une base spécialement dédiée aux tests, issue de la gem 'Faker' (sus nommée Fakir svp). Voir la documentation pour plus d'infos sur la gem, mais notamment, nous avons accès à des bases de données de races de chats, de noms de personnages de GOT ou encore une simple incrémentation de nombres (très utile, sisi).

### Exercice 3:

Cet exercice est décomposé en 4 parties. Le but est de créer 4 formats de bases de données qui permettent le traitement de ces dernières selon des modes définis. Voici les fonctionnements décrits :

  * MOOCademy : Il est demandé que deux classes puissent gérer des Cours et des Leçons. Pour chaque cours, des leçons sont rattachées. La structure est donc telle que :
    - Class Course | name, description
    - Class Lesson | title, body, course_id

  * The Hacking Pinterest : Il est demandé que des utilisateurs puissent créer des pins, et que des commentaires peuvent être envoyés sur les pins. La structure est donc telle que :
    - Class User | name
    - Class Pin | url, user_id
    - Class Post | content, user_id, pin_id

  * The Hacking News : Il est demandé que des utilisateurs puissent poster des liens. Ces derniers doivent pouvoir également commenter ces liens. Egalement commenter les commentaires. La structure est donc telle que :
    - Class User | name
    - Class Post | url, content, user_id
    - Class Comment | content, user_id, post_id
    - Class Comment_to_c | content, user_id, comment_id

  * The Hacking Class : Il est demandé de créer un site d'éducation qui recense des leçons, et qui hébèrgent des cours. Les élèves ne peuvent s'inscrire que sur un seul cours. La structure est donc telle que :
    - Class Lesson | name, course_id
    - Class Course | title, description, content

*PS : Les colonnes id/created_at/updated_at créés automatiquement par Rails ont été volontairement omis.*

## Conditions de test des exercices pour les corrections

**Pour faciliter la correction des exercices précédents voici les éléments à tester dans la console rails, si vous le souhaitez. Le but est de créer des instances de classes, et des liaisons entre celles-ci pour observer le bon fonctionnement des programmes. Les commandes peuvent être :**

**NOTA : $ = terminal || > = console rails**

### Blog_startup / db & app :

```
  > user_1 = User.creat(name: 'Monique')

  > post_1 = Post.new(title: 'La PLS en 8 étapes', body: 'Regarde sur Slack', description: 'Position Latérale de Sécurité', user_id: '1')

  > category_1 = Category.new(name: 'Medical', post_id: '1')

  > category_2 = Category.new(name: 'Development', post_id: '1')
```

### Blog_startup / seed :

```
  $ rails db:seed

  $ rails c

  > User.find(13)

  > User.find(33).name

  > Post.find(40).categories
```

### Exercice 3 :

  * Exemple pour le MOOCademy :

```
  > course = Course.create(title: 'RoR', description: 'Ruby On Rails')

  > lesson_1 = Lesson.create(title: 'Rails', body: 'content', course_id: '1')

  > lesson_2 = Lesson.create(title: 'PLS', body: 'content', course_id: '1')
```

Ce concept est utilisé pour le MOOCademy, mais reste le même pour tous les autres exercices. Chaque nouvelle instance de classe devra remplir toutes les informations nécessaires.

  * Exemple pour le theHackingNews :

```
  > user_1 = User.create(name: 'maurice')

  > post_1 = Post.create(url: '/lib/', content: 'Comment en chier avec RoR/DB quand on a le cours à 23h ...', user_id: '1')

  > comment_1 = Comment.create(content: 'Argh en fait c était pas si dur ...', user_id: '1', post_id: '1')

  > comment_to_c_1 = Comment_to_c.create(content: 'Allo', user_id: '1', comment_id: '1')
```

## Contributeurs

@bab - Baptiste ROGEON

@massimo - Maxime FLEURY

<p align="center">
  <img src="THP_BDX.png"/>
</p>

## Pour aller plus loin

### Au début, t'es comme ca :
https://www.youtube.com/watch?v=MmfeL0R5rbY

### A 18h, tu te dis ca :
https://www.youtube.com/watch?v=xh1svvoBmCs

### A 23h52 :
https://www.youtube.com/watch?v=Eak9JO1zO2U
